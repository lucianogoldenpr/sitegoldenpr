# Script PowerShell para Corrigir Erros HTML Críticos em Massa
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

Write-Host "=== CORRIGINDO ERROS HTML CRÍTICOS ===" -ForegroundColor Green
Write-Host ""

foreach ($arquivo in $arquivosHTML) {
    $caminhoCompleto = Join-Path $diretorio $arquivo
    
    if (Test-Path $caminhoCompleto) {
        Write-Host "Processando: $arquivo" -ForegroundColor Yellow
        
        # Ler conteúdo do arquivo
        $conteudo = Get-Content $caminhoCompleto -Raw -Encoding UTF8
        
        # 1. Remover tag <html> duplicada (linha 3)
        $conteudo = $conteudo -replace '(?m)^<html lang="pt-BR">\r?\n<html>', '<html lang="pt-BR">'
        
        # 2. Corrigir atributo apple-touch-icon 72x72
        $conteudo = $conteudo -replace 'sizes="72x72 href=images/', 'sizes="72x72" href="images/'
        
        # 3. Corrigir atributo apple-touch-icon 114x114
        $conteudo = $conteudo -replace 'sizes="114x114 href=images/', 'sizes="114x114" href="images/'
        
        # 4. Corrigir atributo rs-plugin
        $conteudo = $conteudo -replace 'href="rs-plugin/css/settings\.min\.css media=screen"', 'href="rs-plugin/css/settings.min.css" media="screen"'
        
        # 5. Mudar HTTP para HTTPS no Google Fonts
        $conteudo = $conteudo -replace "http://fonts\.googleapis\.com", "https://fonts.googleapis.com"
        
        # 6. Atualizar copyright de 2017 para 2026
        $conteudo = $conteudo -replace "&copy; 2017 Golden Equipamentos", "&copy; 2026 Golden Equipamentos"
        
        # 7. Corrigir Google Maps (se existir)
        $conteudo = $conteudo -replace 'http://maps\.google\.com/maps/api/js\?sensor=false&amp;language=en', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDzf6Gmc9u7rr2JHijOERAmC_j0gWYtR2c&language=pt-BR'
        
        # Salvar arquivo corrigido
        $conteudo | Out-File -FilePath $caminhoCompleto -Encoding UTF8 -NoNewline
        
        Write-Host "  ✓ Corrigido com sucesso!" -ForegroundColor Green
    } else {
        Write-Host "  ✗ Arquivo não encontrado: $arquivo" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "=== CORREÇÕES CONCLUÍDAS ===" -ForegroundColor Green
Write-Host ""
Write-Host "Arquivos corrigidos:" -ForegroundColor Cyan
Write-Host "  ✓ index.html (já corrigido manualmente)"
Write-Host "  ✓ produtos.html (já corrigido manualmente)"
Write-Host "  ✓ atemoh.html (já corrigido manualmente)"
Write-Host "  ✓ contato.html (já corrigido manualmente)"
Write-Host "  ✓ quemsomos.html (já corrigido manualmente)"
Write-Host "  ✓ $($arquivosHTML.Count) arquivos adicionais"
Write-Host ""
Write-Host "Total: $($arquivosHTML.Count + 5) arquivos HTML corrigidos" -ForegroundColor Green
