# Script de Correcao Adicional de Imagens Fujifilm - Série 530
# Data: 08/01/2026

Write-Host ""
Write-Host "========================================"
Write-Host "  CORRECAO ADICIONAL - SERIE 530"
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
$backup = $arquivo + ".backup2"
$conteudo | Set-Content $backup -Encoding UTF8
Write-Host "Backup criado: fujifilm.html.backup2"
Write-Host ""

$correcoes = 0

Write-Host "Aplicando correcoes adicionais de imagens..."
Write-Host ""

# Correcoes adicionais - Série 530 e FG-1Z
$substituicoes = @(
    @{Busca = 'href="FG_1Z_Gastroscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="FG_1Z_Gastroscopio.html"><img src="images/ggf.jpg"'; Nome = 'FG-1Z' },
    @{Busca = 'href="EC_530DM_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530DM_Colonoscopio.html"><img src="images/ec-530dm.jpg"'; Nome = 'EC-530DM' },
    @{Busca = 'href="EC_530FI_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530FI_Colonoscopio.html"><img src="images/ec-530fm.jpg"'; Nome = 'EC-530FI' },
    @{Busca = 'href="EC_530FL_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530FL_Colonoscopio.html"><img src="images/ec-530fm.jpg"'; Nome = 'EC-530FL' },
    @{Busca = 'href="EC_530FM_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530FM_Colonoscopio.html"><img src="images/ec-530fm.jpg"'; Nome = 'EC-530FM' },
    @{Busca = 'href="EC_530IT_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530IT_Colonoscopio.html"><img src="images/ec-530mt.jpg"'; Nome = 'EC-530IT' },
    @{Busca = 'href="EC_530LT_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530LT_Colonoscopio.html"><img src="images/ec-530mt.jpg"'; Nome = 'EC-530LT' },
    @{Busca = 'href="EC_530MP_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530MP_Colonoscopio.html"><img src="images/ec-530mp.jpg"'; Nome = 'EC-530MP' },
    @{Busca = 'href="EC_530MT_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530MT_Colonoscopio.html"><img src="images/ec-530mt.jpg"'; Nome = 'EC-530MT' },
    @{Busca = 'href=" EC_530WI3_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href=" EC_530WI3_Colonoscopio.html"><img src="images/ec-530mp.jpg"'; Nome = 'EC-530WI3' },
    @{Busca = 'href="EC_530WL3_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530WL3_Colonoscopio.html"><img src="images/ec-530mp.jpg"'; Nome = 'EC-530WL3' },
    @{Busca = 'href="EC_530WM3_Colonoscopio.html">\s*<img src="images/produtos/ultrasonico01.jpg"'; Substituir = 'href="EC_530WM3_Colonoscopio.html"><img src="images/ec-530mp.jpg"'; Nome = 'EC-530WM3' }
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
Write-Host "  Backup: fujifilm.html.backup2"
Write-Host ""
Write-Host "Total de imagens corrigidas ate agora: " + (18 + $correcoes)
Write-Host ""
Write-Host "Proximo passo:"
Write-Host "  Testar em: http://localhost:8000/fujifilm.html"
Write-Host ""
