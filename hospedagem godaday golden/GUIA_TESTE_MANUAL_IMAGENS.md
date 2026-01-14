# 🧪 GUIA DE TESTE MANUAL - IMAGENS FUJIFILM

**Data:** 08/01/2026 14:10  
**Objetivo:** Verificar se as 30 imagens foram corrigidas corretamente  
**Tempo:** 5 minutos

---

## 🚀 COMO TESTAR

### **Passo 1: Abrir a Página**

```
1. Abrir seu navegador (Chrome, Firefox, Edge)
2. Digitar na barra de endereço: http://localhost:8000/fujifilm.html
3. Pressionar Enter
4. Aguardar página carregar
```

---

## ✅ CHECKLIST DE VERIFICAÇÃO

### **Produtos Corrigidos na 1ª Rodada (18):**

Scroll pela página e verifique se estes produtos têm imagens **específicas** (não genéricas):

- [ ] **EC-250HL5** - Deve mostrar colonoscópio específico
- [ ] **EG-250WR5** - Deve mostrar gastroscópio específico
- [ ] **EC-580RD/M/L** - Deve mostrar colonoscópio
- [ ] **EG-580NW2** - Deve mostrar gastroscópio
- [ ] **EC-600WM/WI/WL** - Deve mostrar colonoscópio
- [ ] **EG-600WR** - Deve mostrar gastroscópio (imagem grande)
- [ ] **EPX-4450HD** - Deve mostrar processadora (imagem grande)
- [ ] **EPX-2500** - Deve mostrar processadora
- [ ] **EPX-2200** - Deve mostrar processadora
- [ ] **FB-102T** - Deve mostrar broncoscópio
- [ ] **FB-120S** - Deve mostrar broncoscópio
- [ ] **FC-1Z** - Deve mostrar colonoscópio
- [ ] **EN-450P5** - Deve mostrar enteroscópio
- [ ] **EN-450T5** - Deve mostrar enteroscópio
- [ ] **EN-580T** - Deve mostrar enteroscópio
- [ ] **PB-20** - Deve mostrar balão
- [ ] **EC-530LP** - Deve mostrar colonoscópio
- [ ] **EC-530DL** - Deve mostrar colonoscópio

---

### **Produtos Corrigidos na 2ª Rodada (12):**

Continue scrolling e verifique especialmente estes:

- [ ] **FG-1Z** - Gastroscópio (deve ter imagem específica)
- [ ] **EC-530DM** - Colonoscópio
- [ ] **EC-530FI** - Colonoscópio
- [ ] **EC-530FL** - Colonoscópio
- [ ] **EC-530FM** - Colonoscópio
- [ ] **EC-530IT** - Colonoscópio
- [ ] **EC-530LT** - Colonoscópio
- [ ] **EC-530MP** - Colonoscópio
- [ ] **EC-530MT** - Colonoscópio
- [ ] **EC-530WI3** - Colonoscópio
- [ ] **EC-530WL3** - Colonoscópio
- [ ] **EC-530WM3** - Colonoscópio

---

## 🔍 COMO IDENTIFICAR IMAGENS CORRETAS

### ✅ **Imagem CORRETA:**

```
- Mostra um equipamento médico específico
- Colonoscópio: aparelho com formato curvo/flexível
- Gastroscópio: similar ao colonoscópio
- Processadora: equipamento eletrônico com tela/painel
- Broncoscópio: aparelho fino e flexível
- Enteroscópio: aparelho longo
```

### ❌ **Imagem INCORRETA (genérica):**

```
- Mostra apenas ponta de ultrassom genérica
- Imagem muito pequena e sem detalhes
- Mesma imagem repetida para produtos diferentes
```

---

## 🐛 VERIFICAR ERROS NO CONSOLE

### **Passo 1: Abrir Console**

```
1. Pressionar F12
2. Clicar na aba "Console"
```

### **Passo 2: Procurar Erros de Imagem**

```
Procurar por linhas em VERMELHO com:
- "404" ou "Not Found"
- Relacionadas a arquivos .jpg, .png, .jpeg

Exemplos de erros:
❌ GET http://localhost:8000/images/ggf.jpg 404 (Not Found)
❌ GET http://localhost:8000/images/ec-530dm.jpg 404 (Not Found)
```

### **Passo 3: Anotar Erros**

```
Se encontrar erros 404 de imagens:
1. Anotar qual imagem está faltando
2. Anotar qual produto está afetado
3. Me avisar para corrigir
```

---

## ✅ RESULTADO ESPERADO

### **Se Tudo Estiver OK:**

```
✅ 30 produtos com imagens específicas
✅ Sem imagens quebradas (X vermelho)
✅ Sem erros 404 no console
✅ Cada produto tem aparência diferente
✅ Processadoras mostram equipamentos eletrônicos
✅ Colonoscópios/Gastroscópios mostram aparelhos flexíveis
```

### **Se Houver Problemas:**

```
❌ Imagens quebradas (ícone X vermelho)
❌ Erros 404 no console
❌ Mesma imagem repetida para vários produtos
❌ Imagens genéricas de ultrassom
```

---

## 📸 TESTE VISUAL RÁPIDO

### **Método Rápido (2 min):**

1. **Abrir página:** <http://localhost:8000/fujifilm.html>
2. **Scroll rápido:** Do topo até o final
3. **Observar:** Se há variedade de imagens
4. **Verificar:** Se não há muitos "X" vermelhos

### **Perguntas Rápidas:**

```
1. Vê imagens diferentes para cada produto? 
   ✅ SIM = Correção funcionou
   ❌ NÃO = Algo errado

2. Vê muitas imagens quebradas (X vermelho)?
   ✅ NÃO = Correção funcionou
   ❌ SIM = Imagens faltando

3. Console mostra muitos erros 404?
   ✅ NÃO = Correção funcionou
   ❌ SIM = Caminhos incorretos
```

---

## 🎯 TESTE ESPECÍFICO - SÉRIE 530

### **Produtos para Verificar Especialmente:**

Scroll até encontrar a **Série 530** (final da página):

```
EC-530DM  → Deve ter imagem de colonoscópio
EC-530FI  → Deve ter imagem de colonoscópio
EC-530FL  → Deve ter imagem de colonoscópio
EC-530FM  → Deve ter imagem de colonoscópio
EC-530IT  → Deve ter imagem de colonoscópio
EC-530LT  → Deve ter imagem de colonoscópio
EC-530MP  → Deve ter imagem de colonoscópio
EC-530MT  → Deve ter imagem de colonoscópio
EC-530WI3 → Deve ter imagem de colonoscópio
EC-530WL3 → Deve ter imagem de colonoscópio
EC-530WM3 → Deve ter imagem de colonoscópio
```

**Observação:** Alguns podem ter a mesma imagem (modelos similares), mas **NÃO** devem ter imagem de ultrassom genérico.

---

## 📝 RELATÓRIO PARA MIM

### **Se Tudo OK:**

```
"Testei a página fujifilm.html e está tudo OK:
- 30 produtos com imagens específicas
- Sem imagens quebradas
- Sem erros no console
- Pronto para deploy!"
```

### **Se Houver Problemas:**

```
"Testei e encontrei problemas:
- Produto X está com imagem quebrada
- Produto Y mostra imagem genérica
- Console mostra erro 404 para imagem Z
- Preciso de correção"
```

---

## 🔄 SE ENCONTRAR PROBLEMAS

### **Restaurar Backup (se necessário):**

```powershell
# Se algo deu muito errado:
cd "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"
Copy-Item "fujifilm.html.backup" "fujifilm.html" -Force

# Ou restaurar para antes da 2ª correção:
Copy-Item "fujifilm.html.backup2" "fujifilm.html" -Force
```

---

## ⏱️ TEMPO ESTIMADO

```
Teste Rápido: 2 minutos
Teste Completo: 5 minutos
Verificação Console: 1 minuto

Total: ~5 minutos
```

---

## 🎯 PRÓXIMO PASSO

### **Após Testar:**

1. **Se OK:** Fazer deploy em produção
2. **Se Problemas:** Me avisar para corrigir
3. **Se Dúvida:** Tirar screenshot e me mostrar

---

**Preparado por:** Antigravity AI  
**Data:** 08/01/2026 14:10  
**Tempo:** 5 minutos  
**Dificuldade:** Fácil

**TESTE AGORA E ME AVISE O RESULTADO!** 🚀
