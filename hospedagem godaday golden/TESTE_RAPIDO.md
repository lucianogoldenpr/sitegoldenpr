# 🚀 GUIA RÁPIDO - TESTAR SITE LOCALMENTE

**Tempo:** 5 minutos  
**Dificuldade:** Fácil

---

## ⚡ MÉTODO MAIS RÁPIDO

### Opção 1: Script Automatizado (RECOMENDADO)

```powershell
# 1. Abrir PowerShell
# 2. Executar:
cd "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden"
powershell -ExecutionPolicy Bypass -File testar_site_local.ps1

# 3. Pressionar qualquer tecla quando solicitado
# 4. Servidor iniciará automaticamente
# 5. Abrir navegador em: http://localhost:8000
```

---

### Opção 2: Manual (3 Comandos)

```powershell
# 1. Navegar para a pasta:
cd "C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden"

# 2. Iniciar servidor:
python -m http.server 8000

# 3. Abrir navegador:
# http://localhost:8000
```

---

### Opção 3: Mais Simples (Duplo Clique)

```
1. Abrir pasta:
   C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden\

2. Clicar duas vezes em:
   index.html

3. Site abrirá no navegador
```

---

## ✅ O QUE TESTAR (5 Minutos)

### 1. Página Inicial (1 min)

- [ ] Abre corretamente
- [ ] Logo aparece
- [ ] Menu funciona
- [ ] Copyright mostra "2026"

### 2. Página Cellvizio (1 min)

- [ ] Clicar em "CONHEÇA +" de um produto
- [ ] Página cellvizio.html abre
- [ ] Conteúdo aparece

### 3. Menu de Navegação (1 min)

- [ ] Clicar em PRODUTOS
- [ ] Clicar em CONTATO
- [ ] Clicar em QUEM SOMOS
- [ ] Todos funcionam

### 4. Console (1 min)

- [ ] Pressionar F12
- [ ] Ir em "Console"
- [ ] Verificar se não há erros em VERMELHO

### 5. Footer (1 min)

- [ ] Scroll até o final
- [ ] Verificar: "© 2026 Golden Equipamentos Médicos"
- [ ] NÃO deve ter "2017"

---

## 🎯 RESULTADO ESPERADO

### ✅ TUDO OK SE

- Páginas carregam
- Links funcionam
- Copyright é 2026
- Sem erros vermelhos no console

### ❌ PROBLEMA SE

- Páginas não abrem
- Links dão erro 404
- Copyright ainda é 2017
- Muitos erros vermelhos

---

## 🚀 PRÓXIMO PASSO

### Se tudo estiver OK

```
1. Parar servidor (Ctrl + C)
2. Abrir: GUIA_DEPLOY_PRODUCAO.md
3. Fazer deploy em produção!
```

---

## 📞 PRECISA DE AJUDA?

### Problema: Python não funciona

**Solução Rápida:**

```
Use a Opção 3 (duplo clique no index.html)
Funciona sem Python!
```

### Problema: Porta 8000 ocupada

**Solução:**

```powershell
# Use outra porta:
python -m http.server 8080

# Acesse em:
http://localhost:8080
```

---

**TESTE AGORA! ⚡**

Tempo total: 5 minutos
Risco: ZERO (é só teste local)
