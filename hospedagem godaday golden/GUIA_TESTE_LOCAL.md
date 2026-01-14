# 🧪 GUIA DE TESTE LOCAL - WEBSITE GOLDEN

**Data:** 07/01/2026 17:25  
**Objetivo:** Testar o site localmente antes do deploy em produção  
**Tempo Estimado:** 15-20 minutos

---

## 🎯 POR QUE TESTAR LOCALMENTE?

### Vantagens

- ✅ Sem risco de quebrar o site em produção
- ✅ Testes ilimitados sem afetar usuários
- ✅ Identificar problemas antes do deploy
- ✅ Familiarizar-se com as mudanças
- ✅ Validar todas as correções

---

## 🚀 MÉTODO 1: SERVIDOR LOCAL SIMPLES (RECOMENDADO)

### Opção A: Python (Mais Simples)

#### Pré-requisitos

- Python instalado (geralmente já vem no Windows 10/11)

#### Passo a Passo

1. **Verificar se Python está instalado:**

   ```powershell
   python --version
   ```

   Se não estiver instalado:
   - Baixar: <https://www.python.org/downloads/>
   - Instalar marcando "Add to PATH"

2. **Abrir PowerShell na pasta do site:**

   ```powershell
   cd "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"
   ```

3. **Iniciar servidor local:**

   ```powershell
   # Python 3.x (mais comum):
   python -m http.server 8000
   
   # OU Python 2.x (se o comando acima não funcionar):
   python -m SimpleHTTPServer 8000
   ```

4. **Acessar o site:**

   ```
   Abrir navegador em: http://localhost:8000
   ```

5. **Testar navegação:**
   - Clicar em todos os links
   - Verificar todas as páginas
   - Testar formulários
   - Verificar imagens

6. **Parar servidor:**

   ```
   Pressionar: Ctrl + C no PowerShell
   ```

---

### Opção B: Node.js (http-server)

#### Pré-requisitos

- Node.js instalado

#### Passo a Passo

1. **Verificar Node.js:**

   ```powershell
   node --version
   npm --version
   ```

2. **Instalar http-server (uma vez):**

   ```powershell
   npm install -g http-server
   ```

3. **Navegar para a pasta:**

   ```powershell
   cd "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"
   ```

4. **Iniciar servidor:**

   ```powershell
   http-server -p 8000
   ```

5. **Acessar:**

   ```
   http://localhost:8000
   ```

---

### Opção C: PHP (Se tiver instalado)

```powershell
cd "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"
php -S localhost:8000
```

---

## 🚀 MÉTODO 2: ABRIR DIRETAMENTE NO NAVEGADOR

### Mais Simples (Mas com Limitações)

#### Passo a Passo

1. **Abrir Windows Explorer:**

   ```
   C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden\
   ```

2. **Clicar duas vezes em:**

   ```
   index.html
   ```

3. **Navegador abrirá automaticamente**

#### ⚠️ Limitações

- Alguns recursos podem não funcionar (AJAX, etc)
- URLs serão `file:///` em vez de `http://`
- Mas é suficiente para testes básicos

---

## 🚀 MÉTODO 3: VISUAL STUDIO CODE (Live Server)

### Se você usa VS Code

#### Passo a Passo

1. **Abrir VS Code**

2. **Instalar extensão "Live Server":**
   - Ctrl + Shift + X
   - Buscar: "Live Server"
   - Instalar (por Ritwick Dey)

3. **Abrir pasta do site:**
   - File → Open Folder
   - Selecionar: `copia site golden`

4. **Iniciar Live Server:**
   - Botão direito em `index.html`
   - Clicar em "Open with Live Server"
   - OU clicar em "Go Live" na barra inferior

5. **Site abrirá automaticamente em:**

   ```
   http://127.0.0.1:5500
   ```

#### Vantagens

- ✅ Atualização automática ao salvar arquivos
- ✅ Fácil de usar
- ✅ Ideal para desenvolvimento

---

## ✅ CHECKLIST DE TESTES LOCAIS

### 1. Teste de Páginas Principais

#### Home (index.html)

- [ ] Página carrega corretamente
- [ ] Slider funciona
- [ ] Copyright mostra "2026"
- [ ] Menu de navegação funcional
- [ ] Botão "SOLICITE UM ORÇAMENTO" visível
- [ ] Telefone (41) 3408-2010 visível
- [ ] 3 produtos com botões "CONHEÇA +"

#### Produtos (produtos.html)

- [ ] Página carrega
- [ ] 3 categorias de produtos visíveis
- [ ] Links para produtos funcionam
- [ ] Breadcrumb funcional

#### Cellvizio (cellvizio.html) - NOVA

- [ ] Página existe e carrega
- [ ] Conteúdo completo visível
- [ ] Título: "CELLVIZIO"
- [ ] Descrição técnica presente
- [ ] Botão "SOLICITE UM ORÇAMENTO" funciona
- [ ] Breadcrumb: Home / Produtos / Cellvizio

#### Contato (contato.html)

- [ ] Página carrega
- [ ] Formulário visível
- [ ] Google Maps renderiza
- [ ] Informações de contato visíveis
- [ ] Telefone correto

#### Quem Somos (quemsomos.html)

- [ ] Página carrega
- [ ] Conteúdo visível
- [ ] Imagens carregam

---

### 2. Teste de Links

#### Links do Menu

- [ ] HOME → index.html
- [ ] QUEM SOMOS → quemsomos.html
- [ ] PRODUTOS → produtos.html
- [ ] EVENTOS RECENTES → eventos.html
- [ ] ASSISTÊNCIA TÉCNICA → assistencia.html
- [ ] CONTATO → contato.html

#### Links dos Produtos (index.html)

- [ ] Produto 1 → cellvizio.html
- [ ] Produto 2 → cellvizio.html
- [ ] Produto 3 → cellvizio.html

#### Links Internos

- [ ] Logo → index.html
- [ ] Breadcrumbs funcionam
- [ ] Links do footer funcionam

---

### 3. Teste Visual

#### Layout

- [ ] Header aparece corretamente
- [ ] Logo Golden visível
- [ ] Menu alinhado
- [ ] Footer no final da página
- [ ] Espaçamento adequado

#### Imagens

- [ ] Logo carrega
- [ ] Imagens de produtos carregam
- [ ] Imagens de fundo carregam
- [ ] Sem imagens quebradas (ícone X)

#### Cores e Fontes

- [ ] Cores corretas (dourado/amarelo)
- [ ] Fontes legíveis
- [ ] Contraste adequado

---

### 4. Teste de Console

#### Abrir DevTools (F12)

- [ ] Ir na aba "Console"
- [ ] Verificar se há erros em vermelho
- [ ] Anotar avisos (warnings) em amarelo

#### Erros Aceitáveis (Localmente)

```
⚠️ CORS warnings (normal em file://)
⚠️ loading.gif não encontrado (opcional)
⚠️ favicon.ico não encontrado (opcional)
⚠️ rs-plugin/css/settings.min.css (opcional)
```

#### Erros NÃO Aceitáveis

```
❌ Erros JavaScript críticos
❌ Erros de sintaxe HTML
❌ Arquivos .html não encontrados
❌ Erros de CSS que quebram layout
```

---

### 5. Teste de Responsividade

#### No DevTools (F12)

1. Clicar no ícone de dispositivo móvel
2. Testar em diferentes tamanhos:
   - [ ] Desktop (1920x1080)
   - [ ] Laptop (1366x768)
   - [ ] Tablet (768x1024)
   - [ ] Mobile (375x667)

#### Verificar

- [ ] Menu mobile funciona
- [ ] Conteúdo se adapta
- [ ] Imagens responsivas
- [ ] Textos legíveis

---

### 6. Teste de Formulários

#### Página de Contato

- [ ] Campos visíveis
- [ ] Placeholder text presente
- [ ] Botão de envio presente

**Nota:** Formulário não enviará localmente (normal)

---

### 7. Teste de Copyright

#### Em TODAS as páginas

- [ ] Footer mostra "© 2026 Golden Equipamentos Médicos"
- [ ] NÃO mostra "© 2017"

---

### 8. Teste de Segurança

#### Arquivos que NÃO devem existir

```
Tentar acessar (deve dar erro 404 ou não encontrado):
- [ ] error_log
- [ ] config.php
- [ ] Arquivo Comprimido.zip
- [ ] FUJIFILMC_olonoscopia.html (renomeado)
- [ ] EG_530UR2_Endoscopio_Ultra_Sonico.html.html (renomeado)
```

---

## 📊 SCRIPT DE TESTE AUTOMATIZADO

### Criar arquivo: `testar_site.ps1`

```powershell
# Script de Teste Local - Golden Website
Write-Host "=== TESTE LOCAL - GOLDEN WEBSITE ===" -ForegroundColor Green
Write-Host ""

$pasta = "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"

# Verificar se pasta existe
if (!(Test-Path $pasta)) {
    Write-Host "ERRO: Pasta não encontrada!" -ForegroundColor Red
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
    } else {
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
    } else {
        Write-Host "  AVISO $arquivo ainda existe!" -ForegroundColor Yellow
    }
}

# Verificar copyright
Write-Host ""
Write-Host "Verificando copyright:" -ForegroundColor Yellow

$indexContent = Get-Content (Join-Path $pasta "index.html") -Raw
if ($indexContent -match "2026 Golden Equipamentos") {
    Write-Host "  OK Copyright atualizado para 2026" -ForegroundColor Green
} else {
    Write-Host "  ERRO Copyright nao atualizado!" -ForegroundColor Red
}

# Verificar HTTPS
if ($indexContent -match "https://fonts.googleapis.com") {
    Write-Host "  OK Google Fonts via HTTPS" -ForegroundColor Green
} else {
    Write-Host "  ERRO Google Fonts ainda em HTTP!" -ForegroundColor Red
}

Write-Host ""
Write-Host "=== TESTE CONCLUIDO ===" -ForegroundColor Green
Write-Host ""
Write-Host "Proximo passo: Iniciar servidor local" -ForegroundColor Cyan
Write-Host "Comando: python -m http.server 8000" -ForegroundColor White
Write-Host "Acessar: http://localhost:8000" -ForegroundColor White
```

### Executar

```powershell
cd "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden"
powershell -ExecutionPolicy Bypass -File testar_site.ps1
```

---

## 🎯 GUIA RÁPIDO DE TESTE

### Teste Completo em 10 Minutos

```
1. Iniciar servidor local (2 min)
   → python -m http.server 8000

2. Abrir navegador (1 min)
   → http://localhost:8000

3. Testar páginas principais (3 min)
   → index.html
   → produtos.html
   → cellvizio.html
   → contato.html

4. Testar links (2 min)
   → Menu de navegação
   → Links de produtos
   → Breadcrumbs

5. Verificar console (1 min)
   → F12 → Console
   → Verificar erros

6. Verificar copyright (1 min)
   → Scroll até footer
   → Confirmar "2026"

Total: ~10 minutos
```

---

## 📸 COMPARAÇÃO: LOCAL vs PRODUÇÃO

### Diferenças Esperadas

#### Local (file:// ou localhost)

```
✅ Tudo funciona
⚠️ Alguns avisos CORS (normal)
⚠️ URLs começam com file:// ou localhost
⚠️ Formulários não enviam (normal)
```

#### Produção (<https://goldenpr.com.br>)

```
✅ Tudo funciona
✅ Sem avisos CORS
✅ URLs começam com https://
✅ Formulários funcionam
✅ Google Maps com API key
```

---

## ✅ APROVAÇÃO PARA DEPLOY

### Quando fazer deploy

#### ✅ Pode fazer deploy se

- [x] Todas as páginas carregam localmente
- [x] Links funcionam
- [x] Copyright mostra 2026
- [x] Sem erros críticos no console
- [x] Layout aparece corretamente
- [x] cellvizio.html existe e funciona

#### ❌ NÃO fazer deploy se

- [ ] Páginas não carregam
- [ ] Links quebrados (404)
- [ ] Erros JavaScript críticos
- [ ] Layout quebrado
- [ ] Copyright ainda mostra 2017

---

## 🚀 APÓS TESTES LOCAIS

### Se tudo estiver OK

1. **Parar servidor local:**

   ```
   Ctrl + C no terminal
   ```

2. **Seguir para deploy:**

   ```
   Abrir: GUIA_DEPLOY_PRODUCAO.md
   Seguir passo a passo
   ```

3. **Fazer backup antes:**

   ```
   SEMPRE fazer backup do site em produção!
   ```

---

## 🆘 PROBLEMAS COMUNS

### Problema: "python não é reconhecido"

**Solução:**

```
1. Instalar Python: https://www.python.org/downloads/
2. Marcar "Add to PATH" durante instalação
3. Reiniciar PowerShell
4. Tentar novamente
```

### Problema: Porta 8000 já em uso

**Solução:**

```powershell
# Usar outra porta:
python -m http.server 8080

# Acessar em:
http://localhost:8080
```

### Problema: Imagens não carregam

**Solução:**

```
1. Verificar se pasta images/ existe
2. Verificar nomes dos arquivos (case-sensitive)
3. Verificar caminhos no HTML
```

### Problema: Google Maps não aparece

**Solução:**

```
Normal localmente!
Em produção funcionará com a API key correta
```

---

## 📋 CHECKLIST FINAL

### Antes de Fazer Deploy

- [ ] Testei localmente
- [ ] Todas as páginas funcionam
- [ ] Links estão OK
- [ ] Copyright está 2026
- [ ] Console sem erros críticos
- [ ] Layout correto
- [ ] cellvizio.html funciona
- [ ] Estou confiante para fazer deploy

---

**Preparado por:** Antigravity AI  
**Data:** 07/01/2026 17:25  
**Versão:** 1.0

**TESTE PRIMEIRO, DEPLOY DEPOIS! 🧪→🚀**
