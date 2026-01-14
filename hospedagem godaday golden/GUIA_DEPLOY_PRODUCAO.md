# 🚀 GUIA DE DEPLOY - WEBSITE GOLDEN EQUIPAMENTOS MÉDICOS

**Data:** 07/01/2026 16:55  
**Versão:** 1.0 - Correções Urgentes  
**Status:** Pronto para Deploy

---

## ⚠️ IMPORTANTE - LEIA ANTES DE COMEÇAR

### 🔴 BACKUP OBRIGATÓRIO

**NUNCA faça deploy sem backup!**

Antes de qualquer alteração, você DEVE:

1. Fazer backup completo do site atual
2. Salvar backup em local seguro
3. Testar restauração do backup
4. Só então proceder com o deploy

---

## 📋 PRÉ-REQUISITOS

### Você vai precisar de

- [ ] Acesso FTP ao servidor GoDaddy
- [ ] Credenciais FTP (host, usuário, senha)
- [ ] Cliente FTP (FileZilla, WinSCP, ou similar)
- [ ] Backup do site atual (OBRIGATÓRIO)
- [ ] 30-45 minutos de tempo disponível

### Informações Necessárias

```
Host FTP: ftp.goldenpr.com.br (ou similar)
Usuário: [seu_usuario_godaddy]
Senha: [sua_senha]
Porta: 21 (FTP) ou 22 (SFTP)
Diretório: /public_html/ ou /www/
```

---

## 📦 PASSO 1: FAZER BACKUP DO SITE ATUAL

### Opção A: Via FTP (Recomendado)

1. **Conectar ao servidor:**
   - Abra seu cliente FTP (FileZilla)
   - Conecte-se ao servidor GoDaddy
   - Navegue até o diretório público (`/public_html/`)

2. **Baixar todos os arquivos:**

   ```
   Selecionar: Todos os arquivos e pastas
   Botão direito → Download
   Salvar em: C:\Backup_Golden_[DATA]\
   ```

3. **Verificar backup:**
   - Confirme que todos os arquivos foram baixados
   - Tamanho total deve ser similar ao servidor
   - Teste abrindo alguns arquivos HTML

### Opção B: Via cPanel (Alternativa)

1. **Acessar cPanel:**
   - Login: <https://goldenpr.com.br/cpanel>
   - Usuário e senha do GoDaddy

2. **Criar backup:**
   - Ir em "Arquivos" → "Backup"
   - Clicar em "Baixar um Backup Completo da Conta"
   - Aguardar download (pode demorar)
   - Salvar em local seguro

3. **Backup de banco de dados (se houver):**
   - Ir em "Bancos de Dados" → "phpMyAdmin"
   - Selecionar banco
   - Exportar → Salvar arquivo .sql

---

## 📤 PASSO 2: PREPARAR ARQUIVOS PARA UPLOAD

### Arquivos a Serem Enviados

#### ✅ Arquivos HTML Corrigidos (28 arquivos)

```
✅ index.html
✅ produtos.html
✅ contato.html
✅ quemsomos.html
✅ atemoh.html
✅ assistencia.html
✅ atomic70.html
✅ balao_endoscopia.html
✅ balao_endoscopio.html
✅ blog.html
✅ cellvizio.html (NOVO)
✅ conjunto_rinsagem.html
✅ corrija-sua-postura.html
✅ cpa.html
✅ dla.html
✅ doacao_sangue.html
✅ EG_530UR2_Endoscopio_Ultra_Sonico.html
✅ EG_530UR2_Endoscopio_Ultra_Sonico_DUPLICADO.html
✅ EG_530UT2_Endoscopio_Ultra_Sonico.html
✅ EN_450P5_Enteroscopio.html
✅ Enteroscopia.html
✅ eventos.html
✅ fujifilm.html
✅ FUJIFILM_Colonoscopia.html (RENOMEADO)
✅ FUJIFILM_Endoscopio_Ultra_Sonico_EUS.html
✅ home.html
✅ inscricoes.html
✅ pistola_ar.html
✅ SU_8000_ULTRASSOM.html
```

#### ❌ Arquivos a NÃO Enviar (Removidos)

```
❌ error_log (removido por segurança)
❌ config.php (removido por segurança)
❌ Arquivo Comprimido.zip (removido - 45MB)
❌ FUJIFILMC_olonoscopia.html (renomeado)
❌ EG_530UR2_Endoscopio_Ultra_Sonico.html.html (renomeado)
```

#### 📁 Pastas (Manter como estão)

```
✅ css/ (sem alterações)
✅ js/ (sem alterações)
✅ images/ (sem alterações)
✅ fonts/ (sem alterações)
```

---

## 🚀 PASSO 3: FAZER UPLOAD DOS ARQUIVOS

### Método Recomendado: FileZilla

#### 1. Conectar ao Servidor

```
Host: ftp.goldenpr.com.br
Usuário: [seu_usuario]
Senha: [sua_senha]
Porta: 21
```

#### 2. Navegar para o Diretório Correto

```
Servidor (lado direito): /public_html/
Local (lado esquerdo): C:\Users\Luciano\Downloads\projeto golden\hospedagem godaday golden\copia site golden\
```

#### 3. Upload dos Arquivos HTML

**IMPORTANTE:** Fazer upload em etapas para evitar erros

##### Etapa 1: Arquivos Principais (5 arquivos)

```
1. index.html
2. produtos.html
3. contato.html
4. quemsomos.html
5. cellvizio.html (NOVO)
```

- Selecionar arquivos
- Arrastar para o servidor
- Aguardar conclusão
- Verificar se foram enviados

##### Etapa 2: Páginas de Produtos (10 arquivos)

```
6. atemoh.html
7. atomic70.html
8. fujifilm.html
9. FUJIFILM_Colonoscopia.html
10. conjunto_rinsagem.html
11. cpa.html
12. dla.html
13. pistola_ar.html
14. balao_endoscopia.html
15. balao_endoscopio.html
```

##### Etapa 3: Páginas FUJIFILM (5 arquivos)

```
16. EG_530UR2_Endoscopio_Ultra_Sonico.html
17. EG_530UR2_Endoscopio_Ultra_Sonico_DUPLICADO.html
18. EG_530UT2_Endoscopio_Ultra_Sonico.html
19. EN_450P5_Enteroscopio.html
20. FUJIFILM_Endoscopio_Ultra_Sonico_EUS.html
```

##### Etapa 4: Páginas Restantes (8 arquivos)

```
21. Enteroscopia.html
22. eventos.html
23. assistencia.html
24. blog.html
25. corrija-sua-postura.html
26. doacao_sangue.html
27. home.html
28. inscricoes.html
29. SU_8000_ULTRASSOM.html
```

#### 4. Configurações de Upload

```
Modo de Transferência: Auto (ou Binary para HTML)
Sobrescrever: Sim (após confirmar backup)
Preservar timestamp: Sim
```

---

## 🗑️ PASSO 4: REMOVER ARQUIVOS ANTIGOS DO SERVIDOR

### Arquivos a Deletar (Se Existirem)

#### Via FTP

1. Conectar ao servidor
2. Navegar para `/public_html/`
3. Localizar e deletar:

```bash
# Arquivos sensíveis (DELETAR):
❌ error_log
❌ config.php (se não for usado)
❌ Arquivo Comprimido.zip

# Arquivos com nomes incorretos (DELETAR):
❌ FUJIFILMC_olonoscopia.html
❌ EG_530UR2_Endoscopio_Ultra_Sonico.html.html
```

#### Como Deletar

```
1. Selecionar arquivo
2. Botão direito → Delete
3. Confirmar exclusão
4. Verificar que foi removido
```

---

## ✅ PASSO 5: VERIFICAR DEPLOY

### Testes Imediatos (Após Upload)

#### 1. Testar Página Principal

```
URL: https://goldenpr.com.br/
Verificar:
- ✅ Página carrega
- ✅ Layout correto
- ✅ Copyright mostra 2026
- ✅ Sem erros visíveis
```

#### 2. Testar Página Cellvizio (NOVA)

```
URL: https://goldenpr.com.br/cellvizio.html
Verificar:
- ✅ Página existe (não dá 404)
- ✅ Conteúdo carrega
- ✅ Layout consistente
```

#### 3. Testar Links

```
Na home (index.html):
- ✅ Clicar nos 3 botões "CONHEÇA +" dos produtos
- ✅ Verificar que levam para cellvizio.html
- ✅ Confirmar que não dá erro 404
```

#### 4. Testar Menu de Navegação

```
Clicar em cada item do menu:
- ✅ HOME → index.html
- ✅ QUEM SOMOS → quemsomos.html
- ✅ PRODUTOS → produtos.html
- ✅ EVENTOS → eventos.html
- ✅ ASSISTÊNCIA TÉCNICA → assistencia.html
- ✅ CONTATO → contato.html
```

#### 5. Verificar Console do Navegador

```
1. Abrir DevTools (F12)
2. Ir na aba Console
3. Verificar:
   - ✅ Sem erros críticos em vermelho
   - ✅ Google Fonts carrega via HTTPS
   - ⚠️ Avisos menores são OK
```

#### 6. Testar Google Maps

```
URL: https://goldenpr.com.br/contato.html
Verificar:
- ✅ Mapa renderiza
- ✅ Localização correta (Curitiba)
- ✅ Sem erros de API
```

#### 7. Verificar Arquivos Removidos

```
Tentar acessar (DEVE dar 404):
- ❌ https://goldenpr.com.br/error_log (404 = OK)
- ❌ https://goldenpr.com.br/config.php (404 = OK)
- ❌ https://goldenpr.com.br/Arquivo%20Comprimido.zip (404 = OK)
```

---

## 📱 PASSO 6: TESTES ADICIONAIS

### Teste em Múltiplos Dispositivos

#### Desktop

```
Navegadores:
- ✅ Chrome
- ✅ Firefox
- ✅ Edge
- ✅ Safari (se disponível)
```

#### Mobile

```
Dispositivos:
- ✅ iPhone (Safari)
- ✅ Android (Chrome)
- ✅ Tablet

Ou usar DevTools:
- F12 → Toggle Device Toolbar
- Testar em diferentes resoluções
```

### Teste de Performance

#### Google PageSpeed Insights

```
1. Acessar: https://pagespeed.web.dev/
2. Inserir: https://goldenpr.com.br
3. Clicar em "Analisar"
4. Verificar score (esperado: > 70)
```

#### GTmetrix

```
1. Acessar: https://gtmetrix.com/
2. Inserir: https://goldenpr.com.br
3. Clicar em "Test your site"
4. Verificar relatório
```

---

## 🔍 PASSO 7: VALIDAÇÃO HTML

### W3C Validator

```
1. Acessar: https://validator.w3.org/
2. Inserir URL: https://goldenpr.com.br
3. Clicar em "Check"
4. Verificar resultado:
   - ✅ Sem erros críticos
   - ⚠️ Avisos são aceitáveis
```

### Páginas para Validar

```
✅ https://goldenpr.com.br/
✅ https://goldenpr.com.br/produtos.html
✅ https://goldenpr.com.br/cellvizio.html
✅ https://goldenpr.com.br/contato.html
```

---

## 📊 PASSO 8: MONITORAMENTO PÓS-DEPLOY

### Primeiras 24 Horas

#### Verificar Regularmente

```
A cada 2-4 horas:
- ✅ Site está no ar
- ✅ Páginas carregam
- ✅ Sem erros reportados
- ✅ Formulários funcionam
```

#### Monitorar Analytics (se configurado)

```
- Tráfego normal
- Taxa de rejeição
- Páginas mais visitadas
- Tempo no site
```

#### Verificar Logs de Erro

```
Via cPanel:
1. Acessar cPanel
2. Ir em "Métricas" → "Erros"
3. Verificar últimos erros
4. Investigar se houver erros 404 ou 500
```

---

## 🆘 TROUBLESHOOTING

### Problema: Página não carrega

#### Possíveis Causas

```
1. Arquivo não foi enviado
   → Solução: Re-enviar arquivo via FTP

2. Permissões incorretas
   → Solução: Definir permissões 644 para arquivos

3. Cache do navegador
   → Solução: Ctrl+F5 para forçar atualização
```

### Problema: Links quebrados (404)

#### Verificar

```
1. Nome do arquivo está correto?
   → Verificar capitalização (case-sensitive)

2. Arquivo foi enviado?
   → Verificar no FTP se existe

3. Caminho está correto?
   → Verificar se não tem / extra
```

### Problema: Imagens não carregam

#### Verificar

```
1. Pasta images/ foi enviada?
   → Re-enviar pasta completa

2. Permissões da pasta
   → Definir 755 para pastas

3. Nomes dos arquivos
   → Verificar capitalização
```

### Problema: Google Maps não aparece

#### Verificar

```
1. Chave de API está correta?
   → Verificar no código

2. API está ativa no Google Cloud?
   → Verificar console do Google

3. Domínio está autorizado?
   → Adicionar goldenpr.com.br nas restrições
```

---

## 🔄 ROLLBACK (SE NECESSÁRIO)

### Como Reverter para Versão Anterior

#### Se algo der errado

1. **Não entre em pânico!**
   - Você tem backup
   - É reversível

2. **Conectar ao FTP:**

   ```
   Host: ftp.goldenpr.com.br
   Usuário: [seu_usuario]
   Senha: [sua_senha]
   ```

3. **Deletar arquivos novos:**

   ```
   Selecionar todos os .html
   Botão direito → Delete
   ```

4. **Restaurar do backup:**

   ```
   Abrir pasta de backup local
   Selecionar todos os arquivos
   Arrastar para o servidor
   Aguardar upload
   ```

5. **Verificar:**

   ```
   Acessar: https://goldenpr.com.br
   Confirmar que voltou ao normal
   ```

---

## ✅ CHECKLIST FINAL DE DEPLOY

### Antes do Deploy

- [ ] Backup completo feito
- [ ] Backup testado e funcional
- [ ] Credenciais FTP em mãos
- [ ] Cliente FTP instalado
- [ ] Tempo disponível (30-45 min)

### Durante o Deploy

- [ ] Conectado ao FTP
- [ ] Arquivos HTML enviados (28 arquivos)
- [ ] Arquivos antigos deletados (5 arquivos)
- [ ] Upload concluído sem erros
- [ ] Desconectado do FTP

### Após o Deploy

- [ ] Página principal carrega (index.html)
- [ ] Página cellvizio.html existe e funciona
- [ ] Links funcionam (sem 404)
- [ ] Menu de navegação OK
- [ ] Google Maps renderiza
- [ ] Copyright mostra 2026
- [ ] Arquivos sensíveis removidos (404)
- [ ] Console sem erros críticos
- [ ] Testado em mobile
- [ ] Testado em múltiplos navegadores

### Monitoramento (24-48h)

- [ ] Site está no ar
- [ ] Sem erros reportados
- [ ] Analytics funcionando
- [ ] Formulários funcionam
- [ ] Tráfego normal

---

## 📞 SUPORTE

### Se Precisar de Ajuda

#### GoDaddy Suporte

```
Telefone: 0800 761 1616
Chat: https://br.godaddy.com/contact-us
Email: Através do painel de controle
Horário: 24/7
```

#### Documentação

```
FTP: https://br.godaddy.com/help/ftp-1
cPanel: https://br.godaddy.com/help/cpanel
Backup: https://br.godaddy.com/help/backup
```

---

## 📋 RESUMO DO DEPLOY

### O que será feito

1. ✅ Backup do site atual
2. ✅ Upload de 28 arquivos HTML corrigidos
3. ✅ Upload de 1 arquivo novo (cellvizio.html)
4. ✅ Remoção de 5 arquivos problemáticos
5. ✅ Testes de funcionamento
6. ✅ Monitoramento por 24-48h

### Tempo estimado

- Backup: 10-15 minutos
- Upload: 10-15 minutos
- Testes: 10-15 minutos
- **Total: 30-45 minutos**

### Risco

- 🟢 **BAIXO** - Temos backup completo
- 🟢 Apenas arquivos HTML sendo alterados
- 🟢 Pastas css/, js/, images/ intocadas
- 🟢 Rollback fácil se necessário

---

## 🎯 RESULTADO ESPERADO

### Após o Deploy

- ✅ Website mais seguro
- ✅ HTML válido
- ✅ Links funcionando
- ✅ Copyright atualizado
- ✅ Sem arquivos sensíveis expostos
- ✅ HTTPS em recursos externos
- ✅ Melhor profissionalismo

### Melhorias Visíveis

- ✅ Sem avisos de segurança no navegador
- ✅ Página cellvizio.html funcionando
- ✅ Copyright 2026 no footer
- ✅ Navegação sem erros 404

---

## 🚀 PRONTO PARA COMEÇAR?

### Ordem de Execução

```
1. BACKUP (OBRIGATÓRIO)
   ↓
2. PREPARAR ARQUIVOS
   ↓
3. CONECTAR FTP
   ↓
4. UPLOAD ARQUIVOS
   ↓
5. DELETAR ARQUIVOS ANTIGOS
   ↓
6. TESTAR SITE
   ↓
7. MONITORAR 24-48H
   ↓
8. ✅ DEPLOY CONCLUÍDO!
```

---

**Preparado por:** Antigravity AI  
**Data:** 07/01/2026 16:55  
**Versão:** 1.0  
**Status:** ✅ Pronto para Deploy

**BOA SORTE! 🚀**
