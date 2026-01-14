# 🎯 GUIA PRÁTICO - BAIXAR IMAGENS FUJIFILM (30 MIN)

**Data:** 08/01/2026 12:30  
**Objetivo:** Baixar 3 imagens principais dos produtos FUJIFILM  
**Tempo Estimado:** 30 minutos

---

## 📋 CHECKLIST DE DOWNLOAD

### ✅ Imagens para Baixar (3 principais)

- [ ] **EG-600WR** - Gastroscópio
- [ ] **EC-760R** - Colonoscópio
- [ ] **EP-8000** - Processadora

---

## 🚀 PASSO A PASSO DETALHADO

### **IMAGEM 1: EG-600WR - Gastroscópio**

#### 1. Acessar a Página

```
URL: https://www.fujifilm-endoscopy.com/products/eg-600wr-routine-gastroscope
```

#### 2. Confirmar Status HCP

```
- Clicar em "Yes, I am an HCP"
- Clicar em "SUBMIT"
- Aceitar cookies se solicitado
```

#### 3. Baixar a Imagem

```
1. Esperar página carregar completamente
2. Localizar a imagem principal do produto (lado direito)
3. Botão direito na imagem → "Salvar imagem como..."
4. Nome do arquivo: eg-600wr-gastroscopio.jpg
5. Salvar em: C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden\images\produtos\
```

#### 4. Verificar

```
✅ Arquivo salvo: eg-600wr-gastroscopio.jpg
✅ Tamanho: ~50-200 KB
✅ Formato: JPG
✅ Localização: images/produtos/
```

---

### **IMAGEM 2: EC-760R - Colonoscópio**

#### 1. Acessar a Categoria

```
URL: https://www.fujifilm-endoscopy.com/products/category/colonoscopes
```

#### 2. Procurar o Produto

```
- Scroll para baixo
- Procurar por "EC-760R" ou "EC-860DM"
- Clicar no card do produto
```

#### 3. Baixar a Imagem

```
1. Esperar página do produto carregar
2. Localizar imagem principal
3. Botão direito → "Salvar imagem como..."
4. Nome: ec-760r-colonoscopio.jpg
5. Salvar em: images/produtos/
```

#### 4. Alternativa (se não encontrar EC-760R)

```
Usar qualquer colonoscópio da série 700/800:
- EC-860DM-L Slim Colonoscope
- EC-865DM-L L Routine Colonoscope
- Qualquer um serve para representar colonoscópios
```

---

### **IMAGEM 3: EP-8000 - Processadora**

#### 1. Acessar a Categoria

```
URL: https://www.fujifilm-endoscopy.com/products/category/processors-ancillary-products
```

#### 2. Procurar o Produto

```
- Scroll para baixo
- Procurar por "ELUXEO EP-8000" ou "VP-7000"
- Clicar no card do produto
```

#### 3. Baixar a Imagem

```
1. Esperar página carregar
2. Localizar imagem da processadora
3. Botão direito → "Salvar imagem como..."
4. Nome: ep-8000-processadora.jpg
5. Salvar em: images/produtos/
```

---

## 🔧 ATUALIZAR O HTML

### Após Baixar as 3 Imagens

#### 1. Abrir o Arquivo

```
C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden\fujifilm.html
```

#### 2. Localizar e Substituir

##### **Produto 1: EG-600WR (Linha ~430)**

**ANTES:**

```html
<div class="post-prev-img">
  <a href="EG_600WR.html">
    <img src="images/produtos/ultrasonico01.jpg" alt="img">
  </a>
</div>
```

**DEPOIS:**

```html
<div class="post-prev-img">
  <a href="EG_600WR.html">
    <img src="images/produtos/eg-600wr-gastroscopio.jpg" alt="Gastroscópio EG-600WR Fujifilm">
  </a>
</div>
```

##### **Produto 2: EC-250HL5 (Linha ~296)**

**ANTES:**

```html
<div class="post-prev-img">
  <a href="EC_250HL5___COLONOSCOPIO.html">
    <img src="images/produtos/ultrasonico01.jpg" alt="img">
  </a>
</div>
```

**DEPOIS:**

```html
<div class="post-prev-img">
  <a href="EC_250HL5___COLONOSCOPIO.html">
    <img src="images/produtos/ec-760r-colonoscopio.jpg" alt="Colonoscópio EC-250HL5 Fujifilm">
  </a>
</div>
```

##### **Produto 3: EPX-4450HD (Linha ~459)**

**ANTES:**

```html
<div class="post-prev-img">
  <a href="4450HD_SISTEMA_ELETRONICO_DE_VIDEO_ENDOSCOPIA.html">
    <img src="images/produtos/ultrasonico01.jpg" alt="img">
  </a>
</div>
```

**DEPOIS:**

```html
<div class="post-prev-img">
  <a href="4450HD_SISTEMA_ELETRONICO_DE_VIDEO_ENDOSCOPIA.html">
    <img src="images/produtos/ep-8000-processadora.jpg" alt="Processadora EPX-4450HD Fujifilm">
  </a>
</div>
```

#### 3. Salvar o Arquivo

```
Ctrl + S
```

---

## ✅ TESTAR LOCALMENTE

### 1. Abrir no Navegador

```
http://localhost:8000/fujifilm.html
```

### 2. Verificar

```
✅ Imagem do EG-600WR aparece corretamente
✅ Imagem do colonoscópio aparece
✅ Imagem da processadora aparece
✅ Sem imagens quebradas (X vermelho)
```

### 3. Testar Responsividade

```
F12 → Toggle Device Toolbar
Testar em diferentes tamanhos
```

---

## 🎨 OTIMIZAR IMAGENS (OPCIONAL)

### Se as Imagens Estiverem Muito Grandes

#### Opção 1: TinyPNG

```
1. Acessar: https://tinypng.com/
2. Arrastar as 3 imagens
3. Aguardar compressão
4. Baixar imagens otimizadas
5. Substituir originais
```

#### Opção 2: Squoosh

```
1. Acessar: https://squoosh.app/
2. Arrastar imagem
3. Ajustar qualidade para 80%
4. Redimensionar para 400x400px
5. Download
```

---

## 📊 ESTRUTURA DE PASTAS

### Verificar se Existe

```
C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden\images\produtos\
```

### Se Não Existir

```powershell
# Criar pasta
New-Item -ItemType Directory -Path "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden\images\produtos" -Force
```

### Arquivos na Pasta

```
images/produtos/
├── eg-600wr-gastroscopio.jpg (NOVO)
├── ec-760r-colonoscopio.jpg (NOVO)
├── ep-8000-processadora.jpg (NOVO)
├── ultrasonico01.jpg (antigo - manter)
├── ultrasonico02.jpg (antigo - manter)
└── ... (outros arquivos existentes)
```

---

## 🆘 TROUBLESHOOTING

### Problema: Não Consigo Acessar o Site Fujifilm

**Solução:**

```
1. Verificar conexão com internet
2. Tentar em modo anônimo (Ctrl + Shift + N)
3. Limpar cache do navegador
4. Tentar outro navegador
```

### Problema: Imagem Não Aparece Após Download

**Verificar:**

```
1. Nome do arquivo está correto?
   → eg-600wr-gastroscopio.jpg (sem espaços)

2. Arquivo está na pasta correta?
   → images/produtos/

3. Caminho no HTML está correto?
   → src="images/produtos/eg-600wr-gastroscopio.jpg"

4. Servidor local está rodando?
   → http://localhost:8000
```

### Problema: Imagem Muito Grande

**Solução:**

```
1. Usar TinyPNG para comprimir
2. Ou redimensionar para 400x400px
3. Ou usar qualidade 80% no Squoosh
```

---

## 📋 CHECKLIST FINAL

### Antes de Fazer Deploy

- [ ] 3 imagens baixadas
- [ ] Imagens salvas em images/produtos/
- [ ] fujifilm.html atualizado
- [ ] Testado localmente (localhost:8000)
- [ ] Imagens aparecem corretamente
- [ ] Sem erros no console (F12)
- [ ] Imagens otimizadas (se necessário)

---

## ⏱️ TEMPO ESTIMADO

### Breakdown

```
1. Baixar EG-600WR: 5 min
2. Baixar Colonoscópio: 5 min
3. Baixar Processadora: 5 min
4. Atualizar HTML: 10 min
5. Testar localmente: 5 min

Total: 30 minutos
```

---

## 🎯 RESULTADO ESPERADO

### Antes

```
❌ 20 produtos com mesma imagem (ultrasonico01.jpg)
❌ Imagens não correspondem aos produtos
❌ Aparência não profissional
```

### Depois

```
✅ 3 produtos principais com imagens corretas
✅ Imagens oficiais da Fujifilm
✅ Aparência profissional
✅ Restante pode ser corrigido depois
```

---

## 🚀 COMEÇAR AGORA

### Passo 1

```
Abrir navegador em:
https://www.fujifilm-endoscopy.com/products/eg-600wr-routine-gastroscope
```

### Passo 2

```
Confirmar HCP status
```

### Passo 3

```
Baixar imagem do EG-600WR
```

**BOA SORTE! 🎉**

---

**Criado por:** Antigravity AI  
**Data:** 08/01/2026 12:30  
**Tempo Estimado:** 30 minutos  
**Dificuldade:** Fácil

**COMECE AGORA E ME AVISE QUANDO TERMINAR!** 😊
