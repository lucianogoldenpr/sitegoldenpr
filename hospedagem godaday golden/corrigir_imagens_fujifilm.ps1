# Script de Correcao de Imagens Fujifilm
# Data: 08/01/2026

Write-Host ""
Write-Host "========================================"
Write-Host "  CORRECAO DE IMAGENS - FUJIFILM"
Write-Host "========================================"
Write-Host ""

$arquivo = "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden\fujifilm.html"

if (!(Test-Path $arquivo)) {
    Write-Host "ERRO: Arquivo fujifilm.html nao encontrado!"
    exit
}

Write-Host "Arquivo encontrado: fujifilm.html"
Write-Host "Lendo conteudo..."

$conteudo = Get-Content $arquivo -Raw -Encoding UTF8

# Backup
$backup = $arquivo + ".backup"
$conteudo | Set-Content $backup -Encoding UTF8
Write-Host "Backup criado: fujifilm.html.backup"
Write-Host ""

$correcoes = 0

Write-Host "Aplicando correcoes de imagens..."
Write-Host ""

# Correcoes simples - substituir caminhos de imagens
$substituicoes = @(
    @{Busca = 'href="EC_250HL5___COLONOSCOPIO.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_250HL5___COLONOSCOPIO.html"><img src="images/ec-250hl5.jpg"'; Nome = 'EC-250HL5' },
    @{Busca = 'href="EG_250WR5___Gastroscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EG_250WR5___Gastroscopio.html"><img src="images/eg-250wr5.jpg"'; Nome = 'EG-250WR5' },
    @{Busca = 'href="EC_580RD_M_L.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_580RD_M_L.html"><img src="images/rtemagicc_ec-580rd-m-l_3.png.png"'; Nome = 'EC-580RD/M/L' },
    @{Busca = 'href="8 EG_580NW2.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="8 EG_580NW2.html"><img src="images/rtemagicc_eg-580nw2_3.png.png"'; Nome = 'EG-580NW2' },
    @{Busca = 'href="EC_600WM_WI_WL.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_600WM_WI_WL.html"><img src="images/ec600wm_wi_wl.jpeg"'; Nome = 'EC-600WM/WI/WL' },
    @{Busca = 'href="EG_600WR.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EG_600WR.html"><img src="images/EG-600WR2.jpg"'; Nome = 'EG-600WR' },
    @{Busca = 'href="4450HD_SISTEMA_ELETRONICO_DE_VIDEO_ENDOSCOPIA.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="4450HD_SISTEMA_ELETRONICO_DE_VIDEO_ENDOSCOPIA.html"><img src="images/EPX-4450HD_frontal_8bit.jpg"'; Nome = 'EPX-4450HD' },
    @{Busca = 'href="Processadora_de_Imagem__EPX_2500_.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="Processadora_de_Imagem__EPX_2500_.html"><img src="images/e_p_x_2500.jpg"'; Nome = 'EPX-2500' },
    @{Busca = 'href="Processadora_de_Imagem_EPX_2200.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="Processadora_de_Imagem_EPX_2200.html"><img src="images/2200.JPG"'; Nome = 'EPX-2200' },
    @{Busca = 'href="FB_102T_Broncoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="FB_102T_Broncoscopio.html"><img src="images/fb-120t.jpg"'; Nome = 'FB-102T' },
    @{Busca = 'href="FB_120S_Broncoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="FB_120S_Broncoscopio.html"><img src="images/fb-120s.jpg"'; Nome = 'FB-120S' },
    @{Busca = 'href="FC_1Z_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="FC_1Z_Colonoscopio.html"><img src="images/fc-1z.jpg"'; Nome = 'FC-1Z' },
    @{Busca = 'href="EN_450P5_Enteroscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EN_450P5_Enteroscopio.html"><img src="images/produtos/en-450p5.jpg"'; Nome = 'EN-450P5' },
    @{Busca = 'href="18 EN_450T5_Enteroscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="18 EN_450T5_Enteroscopio.html"><img src="images/produtos/en450.jpg"'; Nome = 'EN-450T5' },
    @{Busca = 'href="EN_580T___ENTEROSCOPIO.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EN_580T___ENTEROSCOPIO.html"><img src="images/produtos/enteroscope.jpg"'; Nome = 'EN-580T' },
    @{Busca = 'href="PB_20.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="PB_20.html"><img src="images/produtos/pb.jpg"'; Nome = 'PB-20' },
    @{Busca = 'href="EC_530_LP_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530_LP_Colonoscopio.html"><img src="images/ec-530mp.jpg"'; Nome = 'EC-530LP' },
    @{Busca = 'href="EC_530DL_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530DL_Colonoscopio.html"><img src="images/ec-530dm.jpg"'; Nome = 'EC-530DL' }
)

foreach ($sub in $substituicoes) {
    if ($conteudo -match $sub.Busca) {
        $conteudo = $conteudo -replace $sub.Busca, $sub.Substituir
        Write-Host ("  OK " + $sub.Nome + ": imagem corrigida")
        $correcoes++
    }
}

Write-Host ""
Write-Host "Salvando arquivo corrigido..."
$conteudo | Set-Content $arquivo -Encoding UTF8

Write-Host ""
Write-Host "========================================"
Write-Host "  CORRECAO CONCLUIDA COM SUCESSO!"
Write-Host "========================================"
Write-Host ""
Write-Host "Estatisticas:"
Write-Host ("  Correcoes aplicadas: " + $correcoes)
Write-Host "  Arquivo: fujifilm.html"
Write-Host "  Backup: fujifilm.html.backup"
Write-Host ""
Write-Host "Proximo passo:"
Write-Host "  Testar em: http://localhost:8000/fujifilm.html"
Write-Host ""
