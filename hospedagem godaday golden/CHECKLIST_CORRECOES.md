# ✅ CHECKLIST DE CORREÇÕES - GOLDEN EQUIPAMENTOS MÉDICOS

## 🔴 CORREÇÕES URGENTES (Fazer Hoje)

### 1. Corrigir Erros HTML Críticos

- [ ] **Remover tag `<html>` duplicada** em todos os arquivos
  - Arquivos: Todos os .html
  - Linha: 3
  - Ação: Deletar linha `<html>`

- [ ] **Corrigir atributos apple-touch-icon**
  - Arquivos: Todos os .html
  - Linhas: 16-17
  - Antes: `sizes="72x72 href=images/..."`
  - Depois: `sizes="72x72" href="images/..."`

- [ ] **Corrigir link do rs-plugin**
  - Arquivos: Todos os .html
  - Linha: 18
  - Antes: `href="rs-plugin/css/settings.min.css media=screen"`
  - Depois: `href="rs-plugin/css/settings.min.css" media="screen"`

### 2. Segurança Crítica

- [ ] **Remover/Proteger arquivos sensíveis**

  ```bash
  # Deletar ou mover para fora do diretório público:
  - error_log
  - config.php
  - Arquivo Comprimido.zip
  ```

- [ ] **Mudar HTTP para HTTPS - Google Fonts**
  - Arquivos: Todos os .html
  - Linha: 22 (index) / 24 (outros)
  - Antes: `http://fonts.googleapis.com`
  - Depois: `https://fonts.googleapis.com`

- [ ] **Atualizar Google Maps API**
  - Arquivo: contato.html
  - Linha: 267
  - Antes: `http://maps.google.com/maps/api/js?sensor=false&language=en`
  - Depois: `https://maps.googleapis.com/maps/api/js?key=SUA_CHAVE&language=pt-BR`

### 3. Links Quebrados

- [ ] **Criar arquivo cellvizio.html**
  - Referenciado em: index.html (linhas 200, 216, 232)
  - Ação: Criar página ou redirecionar para página existente

- [ ] **Verificar diretório rs-plugin**
  - Ação: Adicionar diretório ou remover referências

- [ ] **Renomear arquivo duplicado**
  - Antes: `EG_530UR2_Endoscopio_Ultra_Sonico.html.html`
  - Depois: `EG_530UR2_Endoscopio_Ultra_Sonico.html`

- [ ] **Corrigir nome do arquivo**
  - Antes: `FUJIFILMC_olonoscopia.html`
  - Depois: `FUJIFILM_Colonoscopia.html`

### 4. Atualizar Copyright

- [ ] **Atualizar ano do copyright**
  - Arquivos: Todos os .html
  - Linha: ~290 (footer)
  - Antes: `© 2017 Golden Equipamentos Médicos`
  - Depois: `© 2026 Golden Equipamentos Médicos`

---

## 🟠 CORREÇÕES DE ALTA PRIORIDADE (Esta Semana)

### 5. Melhorar SEO

- [ ] **Criar títulos únicos por página**

  ```html
  index.html: <title>Golden · Equipamentos Médicos | Endoscopia e Vídeo Cirúrgica</title>
  produtos.html: <title>Produtos | Golden Equipamentos Médicos</title>
  contato.html: <title>Contato | Golden Equipamentos Médicos</title>
  quemsomos.html: <title>Quem Somos | Golden Equipamentos Médicos</title>
  assistencia.html: <title>Assistência Técnica | Golden Equipamentos Médicos</title>
  eventos.html: <title>Eventos | Golden Equipamentos Médicos</title>
  ```

- [ ] **Criar meta descriptions únicas**

  ```html
  index.html: "Distribuidor exclusivo FUJINON no Paraná. Equipamentos médicos para endoscopia digestiva e cirúrgica com assistência técnica especializada."
  
  produtos.html: "Conheça nossa linha completa de equipamentos médicos: endoscópios, videogastroscópios, processadoras e acessórios das melhores marcas."
  
  contato.html: "Entre em contato com a Golden Equipamentos Médicos. Atendimento especializado em Curitiba-PR. (41) 3408-2010"
  ```

- [ ] **Adicionar Schema Markup - Organization**

  ```html
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "MedicalBusiness",
    "name": "Golden Equipamentos Médicos",
    "url": "https://goldenpr.com.br",
    "logo": "https://goldenpr.com.br/images/logo.svg",
    "description": "Distribuidor de equipamentos médicos para endoscopia",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "R. Comendador Araújo, 143 - Sala 85",
      "addressLocality": "Curitiba",
      "addressRegion": "PR",
      "postalCode": "80420-000",
      "addressCountry": "BR"
    },
    "telephone": "+55-41-3408-2010",
    "email": "contato@goldenpr.com.br"
  }
  </script>
  ```

### 6. Melhorar Acessibilidade

- [ ] **Remover maximum-scale do viewport**
  - Antes: `<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">`
  - Depois: `<meta name="viewport" content="width=device-width, initial-scale=1">`

- [ ] **Melhorar textos alt das imagens**
  - Trocar `alt="img"` por descrições específicas
  - Exemplo: `alt="Endoscópio FUJIFILM modelo EG-530UR2"`

- [ ] **Traduzir aviso de browser para português**
  - Arquivo: Todos os .html
  - Linhas: 51-56
  - Trocar textos em inglês por português

### 7. Corrigir Menu de Navegação

- [ ] **Corrigir estrutura HTML do menu**
  - Problema: Tag `<li>` não fechada corretamente antes de "PRODUTOS"
  - Arquivos: Todos os .html
  - Linhas: 105-120

  **Estrutura Correta:**

  ```html
  <ul class="nav navbar-nav">
    <li><a href="index.html">HOME</a></li>
    <li><a href="quemsomos.html">QUEM SOMOS</a></li>
    <li class="current"><a href="produtos.html">PRODUTOS</a></li>
    <li><a href="eventos.html">EVENTOS RECENTES</a></li>
    <li><a href="assistencia.html">ASSISTÊNCIA TÉCNICA</a></li>
    <li><a href="contato.html">CONTATO</a></li>
  </ul>
  ```

### 8. Padronizar Chat Tawk.to

- [ ] **Definir um único ID do Tawk.to**
  - Escolher: `5acec1b8d7591465c7096bed` OU `5acfb4bf4b401e45400e9515`
  - Aplicar em todos os arquivos

---

## 🟡 CORREÇÕES DE MÉDIA PRIORIDADE (Este Mês)

### 9. Otimizar Performance

- [ ] **Atualizar jQuery**
  - Versão atual: 1.11.2 (2015)
  - Atualizar para: 3.7.1 ou superior
  - Testar compatibilidade com plugins

- [ ] **Atualizar Bootstrap**
  - Versão atual: 3.x
  - Considerar: Bootstrap 5.3 ou TailwindCSS

- [ ] **Implementar Lazy Loading de Imagens**

  ```html
  <img src="placeholder.jpg" data-src="imagem-real.jpg" loading="lazy" alt="Descrição">
  ```

- [ ] **Minificar e Concatenar CSS**
  - Combinar múltiplos arquivos CSS
  - Minificar com ferramenta (cssnano, clean-css)

- [ ] **Minificar e Concatenar JavaScript**
  - Combinar scripts não-críticos
  - Usar defer ou async

### 10. Melhorar Código

- [ ] **Remover código de suporte ao IE8**
  - Deletar conditional comments
  - Remover ie-warning.css
  - Remover ie8-fix.css
  - Remover html5shiv e respond.js

- [ ] **Substituir `<br>` múltiplos por CSS**
  - Arquivo: produtos.html
  - Usar classes com margin/padding

- [ ] **Mover estilos inline para CSS**
  - Criar classes reutilizáveis
  - Exemplo: `.btn-orcamento` para o botão de orçamento

- [ ] **Remover comentários vazios**
  - Linha 253 em produtos.html: "Hotjar Tracking Code"

### 11. Melhorar Formulário de Contato

- [ ] **Substituir iframe do 123formbuilder**
  - Criar formulário próprio em HTML
  - Adicionar validação JavaScript
  - Implementar proteção anti-spam (reCAPTCHA)

- [ ] **Adicionar campos LGPD**
  - Checkbox de consentimento
  - Link para política de privacidade

### 12. Adicionar Recursos Modernos

- [ ] **Implementar WhatsApp Button Flutuante**

  ```html
  <a href="https://wa.me/5541XXXXXXXX?text=Olá,%20gostaria%20de%20mais%20informações" 
     class="whatsapp-float" 
     target="_blank"
     aria-label="Fale conosco no WhatsApp">
    <i class="fab fa-whatsapp"></i>
  </a>
  ```

- [ ] **Adicionar Cookie Consent Banner**
  - Implementar banner LGPD
  - Salvar preferências do usuário

- [ ] **Criar Sitemap.xml**

  ```xml
  <?xml version="1.0" encoding="UTF-8"?>
  <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
      <loc>https://goldenpr.com.br/</loc>
      <lastmod>2026-01-07</lastmod>
      <priority>1.0</priority>
    </url>
    <!-- Adicionar todas as páginas -->
  </urlset>
  ```

- [ ] **Criar/Atualizar Robots.txt**

  ```
  User-agent: *
  Allow: /
  Disallow: /cgi-bin/
  Disallow: /error_log
  Disallow: /config.php
  
  Sitemap: https://goldenpr.com.br/sitemap.xml
  ```

---

## 🟢 MELHORIAS FUTURAS (Próximos 3 Meses)

### 13. Redesign Completo

- [ ] **Criar Design System**
  - Definir paleta de cores
  - Escolher tipografia
  - Criar componentes reutilizáveis

- [ ] **Wireframes de Todas as Páginas**
  - Home
  - Produtos (lista e individual)
  - Sobre
  - Contato
  - Assistência Técnica
  - Eventos

- [ ] **Mockups em Alta Fidelidade**
  - Desktop (1920px)
  - Tablet (768px)
  - Mobile (375px)

### 14. Novas Funcionalidades

- [ ] **Sistema de Busca**
  - Busca por produtos
  - Autocomplete
  - Filtros

- [ ] **Blog/Notícias**
  - Sistema de posts
  - Categorias
  - Tags
  - Comentários (opcional)

- [ ] **Catálogo Digital**
  - PDF para download
  - Versão online interativa

- [ ] **Portal do Cliente**
  - Login/Registro
  - Histórico de orçamentos
  - Rastreamento de pedidos

### 15. Integrações

- [ ] **Google Analytics 4**
  - Configurar eventos
  - Configurar conversões

- [ ] **Google Search Console**
  - Verificar propriedade
  - Enviar sitemap

- [ ] **Facebook Pixel**
  - Rastreamento de conversões
  - Remarketing

- [ ] **CRM Integration**
  - Integrar formulários com CRM
  - Automação de emails

---

## 📋 TEMPLATE DE CORREÇÃO PARA CADA ARQUIVO HTML

### Arquivo: [NOME_DO_ARQUIVO].html

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <!-- Meta Tags Básicas -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <!-- SEO -->
  <title>[TÍTULO ÚNICO DA PÁGINA] | Golden Equipamentos Médicos</title>
  <meta name="description" content="[DESCRIÇÃO ÚNICA DA PÁGINA]">
  <meta name="robots" content="index,follow">
  <meta http-equiv="Content-Language" content="pt-br">
  <meta name="author" content="Golden Equipamentos Médicos">
  
  <!-- Canonical e Alternate -->
  <link rel="canonical" href="https://goldenpr.com.br/[URL_DA_PAGINA]">
  <link rel="alternate" href="https://goldenpr.com.br/[URL_DA_PAGINA]" hreflang="pt-br">
  
  <!-- Favicons -->
  <link rel="shortcut icon" href="images/favicon/favicon.ico">
  <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-touch-icon-114x114.png">
  
  <!-- CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/animate.min.css">
  <link rel="stylesheet" href="css/icons-fonts.css">
  
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700|Open+Sans:400,300,700" rel="stylesheet">
  
  <!-- Open Graph -->
  <meta property="og:title" content="[TÍTULO DA PÁGINA]">
  <meta property="og:description" content="[DESCRIÇÃO DA PÁGINA]">
  <meta property="og:image" content="https://goldenpr.com.br/images/og-image.jpg">
  <meta property="og:url" content="https://goldenpr.com.br/[URL_DA_PAGINA]">
  <meta property="og:type" content="website">
  
  <!-- Schema Markup -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    "itemListElement": [
      {
        "@type": "ListItem",
        "position": 1,
        "name": "Home",
        "item": "https://goldenpr.com.br"
      },
      {
        "@type": "ListItem",
        "position": 2,
        "name": "[NOME DA PÁGINA]",
        "item": "https://goldenpr.com.br/[URL_DA_PAGINA]"
      }
    ]
  }
  </script>
</head>
<body>
  <!-- Conteúdo -->
  
  <!-- Scripts no final do body -->
  <script src="js/jquery-3.7.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  
  <!-- Tawk.to -->
  <script type="text/javascript">
  var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
  (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/[ID_UNICO]/default';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
  })();
  </script>
</body>
</html>
```

---

## 🎯 ORDEM DE EXECUÇÃO RECOMENDADA

### Dia 1: Correções Críticas

1. Corrigir erros HTML (tags duplicadas, atributos)
2. Mudar HTTP para HTTPS
3. Remover arquivos sensíveis
4. Atualizar copyright

### Dia 2-3: Links e Navegação

5. Corrigir links quebrados
2. Criar páginas faltantes
3. Corrigir menu de navegação
4. Padronizar Tawk.to

### Semana 1: SEO Básico

9. Criar títulos únicos
2. Criar meta descriptions
3. Adicionar Schema markup
4. Melhorar alt texts

### Semana 2: Acessibilidade e Performance

13. Remover maximum-scale
2. Traduzir textos
3. Implementar lazy loading
4. Otimizar imagens

### Semana 3-4: Código e Otimizações

17. Atualizar bibliotecas
2. Limpar código
3. Minificar assets
4. Implementar WhatsApp button

### Mês 2-3: Redesign

21. Design system
2. Wireframes
3. Mockups
4. Desenvolvimento

---

## 📊 TRACKING DE PROGRESSO

### Correções Urgentes

- [ ] 0/4 concluídas (0%)

### Alta Prioridade

- [ ] 0/8 concluídas (0%)

### Média Prioridade

- [ ] 0/12 concluídas (0%)

### Melhorias Futuras

- [ ] 0/15 concluídas (0%)

**Total Geral:** 0/39 (0%)

---

## 🔧 FERRAMENTAS ÚTEIS

### Validação

- [W3C HTML Validator](https://validator.w3.org/)
- [W3C CSS Validator](https://jigsaw.w3.org/css-validator/)
- [Schema Markup Validator](https://validator.schema.org/)

### Performance

- [Google PageSpeed Insights](https://pagespeed.web.dev/)
- [GTmetrix](https://gtmetrix.com/)
- [WebPageTest](https://www.webpagetest.org/)

### SEO

- [Google Search Console](https://search.google.com/search-console)
- [Ahrefs](https://ahrefs.com/)
- [SEMrush](https://www.semrush.com/)

### Acessibilidade

- [WAVE](https://wave.webaim.org/)
- [axe DevTools](https://www.deque.com/axe/devtools/)
- [Lighthouse](https://developers.google.com/web/tools/lighthouse)

### Otimização de Imagens

- [TinyPNG](https://tinypng.com/)
- [Squoosh](https://squoosh.app/)
- [ImageOptim](https://imageoptim.com/)

---

**Última Atualização:** 07/01/2026  
**Versão:** 1.0
