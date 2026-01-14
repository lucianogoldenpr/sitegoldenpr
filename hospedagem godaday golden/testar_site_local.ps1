# Script de Teste Local - Golden Website
Write-Host "=== TESTE LOCAL - GOLDEN WEBSITE ===" -ForegroundColor Green
Write-Host ""

$pasta = "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"

# Verificar se pasta existe
if (!(Test-Path $pasta)) {
    Write-Host "ERRO: Pasta nao encontrada!" -ForegroundColor Red
    exit
}

Write-Host "Pasta encontrada: OK" -ForegroundColor Green

# Verificar arquivos principais
$arquivos = @(
    "index.html",
    "produtos.html",
    "contato.html",
    "quemsomos.html",
    "cellvizio.html"
)

Write-Host ""
Write-Host "Verificando arquivos principais:" -ForegroundColor Yellow

foreach ($arquivo in $arquivos) {
    $caminho = Join-Path $pasta $arquivo
    if (Test-Path $caminho) {
        $tamanho = (Get-Item $caminho).Length
        Write-Host "  OK $arquivo ($tamanho bytes)" -ForegroundColor Green
    }
    else {
        Write-Host "  ERRO $arquivo NAO ENCONTRADO!" -ForegroundColor Red
    }
}

# Verificar arquivos que NÃO devem existir
Write-Host ""
Write-Host "Verificando arquivos removidos:" -ForegroundColor Yellow

$arquivosRemovidos = @(
    "error_log",
    "config.php",
    "Arquivo Comprimido.zip"
)

foreach ($arquivo in $arquivosRemovidos) {
    $caminho = Join-Path $pasta $arquivo
    if (!(Test-Path $caminho)) {
        Write-Host "  OK $arquivo foi removido" -ForegroundColor Green
    }
    else {
        Write-Host "  AVISO $arquivo ainda existe!" -ForegroundColor Yellow
    }
}

# Verificar copyright
Write-Host ""
Write-Host "Verificando copyright:" -ForegroundColor Yellow

$indexContent = Get-Content (Join-Path $pasta "index.html") -Raw
if ($indexContent -match "2026 Golden Equipamentos") {
    Write-Host "  OK Copyright atualizado para 2026" -ForegroundColor Green
}
else {
    Write-Host "  ERRO Copyright nao atualizado!" -ForegroundColor Red
}

# Verificar HTTPS
if ($indexContent -match "https://fonts.googleapis.com") {
    Write-Host "  OK Google Fonts via HTTPS" -ForegroundColor Green
}
else {
    Write-Host "  ERRO Google Fonts ainda em HTTP!" -ForegroundColor Red
}

Write-Host ""
Write-Host "=== TESTE CONCLUIDO ===" -ForegroundColor Green
Write-Host ""
Write-Host "Proximo passo: Iniciar servidor local" -ForegroundColor Cyan
Write-Host "Comando: python -m http.server 8000" -ForegroundColor White
Write-Host "Acessar: http://localhost:8000" -ForegroundColor White
Write-Host ""
Write-Host "Pressione qualquer tecla para iniciar o servidor..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

# Iniciar servidor
Write-Host ""
Write-Host "Iniciando servidor local na porta 8000..." -ForegroundColor Green
Write-Host "Pressione Ctrl+C para parar o servidor" -ForegroundColor Yellow
Write-Host ""

Set-Location $pasta
python -m http.server 8000
