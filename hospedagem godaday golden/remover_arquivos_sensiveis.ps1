# Script PowerShell para Remover Arquivos Sensíveis
# Golden Equipamentos Médicos

$diretorio = "c:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"
$pastaBackup = "c:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\arquivos_sensiveis_backup"

Write-Host "=== REMOVENDO ARQUIVOS SENSIVEIS ===" -ForegroundColor Red
Write-Host ""

# Criar pasta de backup se não existir
if (!(Test-Path $pastaBackup)) {
    New-Item -ItemType Directory -Path $pastaBackup | Out-Null
    Write-Host "Pasta de backup criada: $pastaBackup" -ForegroundColor Green
}

# Lista de arquivos sensíveis para mover
$arquivosSensiveis = @(
    "error_log",
    "config.php",
    "Arquivo Comprimido.zip"
)

foreach ($arquivo in $arquivosSensiveis) {
    $origem = Join-Path $diretorio $arquivo
    $destino = Join-Path $pastaBackup $arquivo
    
    if (Test-Path $origem) {
        try {
            Move-Item -Path $origem -Destination $destino -Force
            Write-Host "OK Movido: $arquivo" -ForegroundColor Green
            Write-Host "   De: $origem" -ForegroundColor Gray
            Write-Host "   Para: $destino" -ForegroundColor Gray
        }
        catch {
            Write-Host "ERRO ao mover $arquivo : $_" -ForegroundColor Red
        }
    }
    else {
        Write-Host "NAO ENCONTRADO: $arquivo" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "=== RENOMEANDO ARQUIVOS COM ERROS ===" -ForegroundColor Yellow
Write-Host ""

# Renomear arquivo duplicado
$arquivoDuplicado = Join-Path $diretorio "EG_530UR2_Endoscopio_Ultra_Sonico.html.html"
$arquivoCorreto = Join-Path $diretorio "EG_530UR2_Endoscopio_Ultra_Sonico_DUPLICADO.html"

if (Test-Path $arquivoDuplicado) {
    try {
        Rename-Item -Path $arquivoDuplicado -NewName "EG_530UR2_Endoscopio_Ultra_Sonico_DUPLICADO.html" -Force
        Write-Host "OK Renomeado arquivo duplicado" -ForegroundColor Green
    }
    catch {
        Write-Host "ERRO ao renomear: $_" -ForegroundColor Red
    }
}

# Renomear arquivo com erro de digitação
$arquivoErrado = Join-Path $diretorio "FUJIFILMC_olonoscopia.html"
$arquivoCorrigido = Join-Path $diretorio "FUJIFILM_Colonoscopia.html"

if (Test-Path $arquivoErrado) {
    try {
        Rename-Item -Path $arquivoErrado -NewName "FUJIFILM_Colonoscopia.html" -Force
        Write-Host "OK Renomeado: FUJIFILMC_olonoscopia.html -> FUJIFILM_Colonoscopia.html" -ForegroundColor Green
    }
    catch {
        Write-Host "ERRO ao renomear: $_" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "=== CONCLUIDO ===" -ForegroundColor Green
Write-Host ""
Write-Host "Arquivos sensiveis movidos para:" -ForegroundColor Cyan
Write-Host $pastaBackup -ForegroundColor White
Write-Host ""
Write-Host "IMPORTANTE: Estes arquivos NAO devem estar no diretorio publico!" -ForegroundColor Red
