# Script PowerShell para Corrigir Erros HTML Críticos
# Golden Equipamentos Médicos

$arquivosHTML = @(
    "assistencia.html",
    "atomic70.html",
    "balao_endoscopia.html",
    "balao_endoscopio.html",
    "blog.html",
    "conjunto_rinsagem.html",
    "corrija-sua-postura.html",
    "cpa.html",
    "dla.html",
    "doacao_sangue.html",
    "EG_530UR2_Endoscopio_Ultra_Sonico.html",
    "EG_530UT2_Endoscopio_Ultra_Sonico.html",
    "EN_450P5_Enteroscopio.html",
    "Enteroscopia.html",
    "eventos.html",
    "fujifilm.html",
    "FUJIFILMC_olonoscopia.html",
    "FUJIFILM_Endoscopio_Ultra_Sonico_EUS.html",
    "home.html",
    "inscricoes.html",
    "pistola_ar.html",
    "SU_8000_ULTRASSOM.html"
)

$diretorio = "c:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"

Write-Host "=== CORRIGINDO ERROS HTML CRITICOS ===" -ForegroundColor Green
Write-Host ""

$contador = 0

foreach ($arquivo in $arquivosHTML) {
    $caminhoCompleto = Join-Path $diretorio $arquivo
    
    if (Test-Path $caminhoCompleto) {
        Write-Host "Processando: $arquivo" -ForegroundColor Yellow
        
        try {
            $conteudo = Get-Content $caminhoCompleto -Raw -Encoding UTF8
            
            $conteudo = $conteudo -replace '(?m)^<html lang="pt-BR">\r?\n<html>', '<html lang="pt-BR">'
            $conteudo = $conteudo -replace 'sizes="72x72 href=images/', 'sizes="72x72" href="images/'
            $conteudo = $conteudo -replace 'sizes="114x114 href=images/', 'sizes="114x114" href="images/'
            $conteudo = $conteudo -replace 'href="rs-plugin/css/settings\.min\.css media=screen"', 'href="rs-plugin/css/settings.min.css" media="screen"'
            $conteudo = $conteudo -replace "http://fonts\.googleapis\.com", "https://fonts.googleapis.com"
            $conteudo = $conteudo -replace "&copy; 2017 Golden Equipamentos", "&copy; 2026 Golden Equipamentos"
            
            $conteudo | Out-File -FilePath $caminhoCompleto -Encoding UTF8 -NoNewline
            
            Write-Host "  OK Corrigido!" -ForegroundColor Green
            $contador++
        }
        catch {
            Write-Host "  ERRO: $_" -ForegroundColor Red
        }
    }
    else {
        Write-Host "  NAO ENCONTRADO: $arquivo" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "=== CONCLUIDO ===" -ForegroundColor Green
Write-Host "Arquivos corrigidos: $contador de $($arquivosHTML.Count)" -ForegroundColor Cyan
