# 💻 EXEMPLOS DE CÓDIGO CORRIGIDO - GOLDEN EQUIPAMENTOS MÉDICOS

## 📄 1. HEAD SECTION CORRIGIDA (index.html)

### ❌ ANTES (Com Erros)

```html
<!DOCTYPE html>
<html lang="pt-BR">
<html>  <!-- ERRO: Tag duplicada -->
<head>
<title>Golden · Equipamentos Médicos</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="apple-touch-icon" sizes="72x72 href=images/favicon/apple-touch-icon-72x72.png">  <!-- ERRO: Aspas -->
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.min.css media=screen" />  <!-- ERRO: Aspas -->
<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700%7COpen+Sans:400,300,700' rel="stylesheet" type="text/css">  <!-- ERRO: HTTP -->
</head>
```

### ✅ DEPOIS (Corrigido)

```html
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <!-- Meta Tags Essenciais -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <!-- SEO -->
  <title>Golden · Equipamentos Médicos | Endoscopia e Vídeo Cirúrgica no Paraná</title>
  <meta name="description" content="Distribuidor exclusivo FUJINON no Paraná. Equipamentos médicos para endoscopia digestiva e cirúrgica com assistência técnica especializada em Curitiba.">
  <meta name="keywords" content="equipamentos médicos, endoscopia, FUJINON, Curitiba, Paraná, videogastroscópio, videocolonoscópio">
  <meta name="robots" content="index,follow">
  <meta http-equiv="Content-Language" content="pt-br">
  <meta name="author" content="Golden Equipamentos Médicos">
  
  <!-- Canonical e Hreflang -->
  <link rel="canonical" href="https://goldenpr.com.br/">
  <link rel="alternate" href="https://goldenpr.com.br/" hreflang="pt-br">
  
  <!-- Favicons -->
  <link rel="shortcut icon" href="images/favicon/favicon.ico">
  <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="images/favicon/apple-touch-icon-114x114.png">
  
  <!-- Preconnect para Performance -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  
  <!-- CSS -->
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/animate.min.css">
  <link rel="stylesheet" href="css/icons-fonts.css">
  <link rel="stylesheet" href="css/flexslider.css">
  
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&family=Open+Sans:wght@300;400;700&display=swap" rel="stylesheet">
  
  <!-- Open Graph para Redes Sociais -->
  <meta property="og:title" content="Golden · Equipamentos Médicos">
  <meta property="og:description" content="Distribuidor exclusivo FUJINON no Paraná. Equipamentos médicos para endoscopia.">
  <meta property="og:image" content="https://goldenpr.com.br/images/og-image.jpg">
  <meta property="og:url" content="https://goldenpr.com.br/">
  <meta property="og:type" content="website">
  <meta property="og:locale" content="pt_BR">
  
  <!-- Twitter Card -->
  <meta name="twitter:card" content="summary_large_image">
  <meta name="twitter:title" content="Golden · Equipamentos Médicos">
  <meta name="twitter:description" content="Distribuidor exclusivo FUJINON no Paraná.">
  <meta name="twitter:image" content="https://goldenpr.com.br/images/twitter-card.jpg">
  
  <!-- Schema.org Markup -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "MedicalBusiness",
    "name": "Golden Equipamentos Médicos",
    "url": "https://goldenpr.com.br",
    "logo": "https://goldenpr.com.br/images/logo.svg",
    "image": "https://goldenpr.com.br/images/golden-building.jpg",
    "description": "Distribuidor exclusivo FUJINON no Paraná. Comércio de equipamentos médicos para vídeo endoscopia digestiva e cirúrgica.",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "R. Comendador Araújo, 143 - Sala 85",
      "addressLocality": "Curitiba",
      "addressRegion": "PR",
      "postalCode": "80420-000",
      "addressCountry": "BR"
    },
    "geo": {
      "@type": "GeoCoordinates",
      "latitude": "-25.4347203",
      "longitude": "-49.2773706"
    },
    "telephone": "+55-41-3408-2010",
    "email": "contato@goldenpr.com.br",
    "openingHoursSpecification": [
      {
        "@type": "OpeningHoursSpecification",
        "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
        "opens": "08:00",
        "closes": "18:00"
      }
    ],
    "sameAs": [
      "https://www.facebook.com/goldenequipamentos",
      "https://www.instagram.com/goldenequipamentos"
    ]
  }
  </script>
</head>
```

---

## 🧭 2. MENU DE NAVEGAÇÃO CORRIGIDO

### ❌ ANTES (Estrutura Quebrada)

```html
<ul class="nav navbar-nav">
  <li class="current"> <a href="index.html">
    <div class="main-menu-title">HOME</div>
    </a> </li>
  
  <li> 
    <a href="quemsomos.html">
      <div class="main-menu-title">QUEM SOMOS</div>
    </a> 
  </li>
  
  <li> <a href="produtos.html">  <!-- ERRO: Tag não fecha -->
    <div class="main-menu-title">PRODUTOS</div>
    </a>
  
    <li> <a href="eventos.html">  <!-- ERRO: Aninhamento incorreto -->
      <div class="main-menu-title">EVENTOS RECENTES</div>
      </a> </li>
</ul>
```

### ✅ DEPOIS (Estrutura Correta)

```html
<nav class="navbar navbar-default" role="navigation" aria-label="Menu principal">
  <div class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      
      <!-- Home -->
      <li class="current">
        <a href="index.html" aria-current="page">
          <span class="main-menu-title">HOME</span>
        </a>
      </li>
      
      <!-- Quem Somos -->
      <li>
        <a href="quemsomos.html">
          <span class="main-menu-title">QUEM SOMOS</span>
        </a>
      </li>
      
      <!-- Produtos com Dropdown -->
      <li class="dropdown">
        <a href="produtos.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          <span class="main-menu-title">PRODUTOS</span>
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li><a href="fujifilm.html">FUJIFILM</a></li>
          <li><a href="atomic70.html">Atomic70</a></li>
          <li><a href="atemoh.html">ATEMOH</a></li>
          <li role="separator" class="divider"></li>
          <li><a href="produtos.html">Ver Todos</a></li>
        </ul>
      </li>
      
      <!-- Eventos -->
      <li>
        <a href="eventos.html">
          <span class="main-menu-title">EVENTOS RECENTES</span>
        </a>
      </li>
      
      <!-- Assistência Técnica -->
      <li>
        <a href="assistencia.html">
          <span class="main-menu-title">ASSISTÊNCIA TÉCNICA</span>
        </a>
      </li>
      
      <!-- Contato -->
      <li>
        <a href="contato.html">
          <span class="main-menu-title">CONTATO</span>
        </a>
      </li>
      
    </ul>
  </div>
</nav>
```

---

## 🖼️ 3. IMAGENS COM ALT TEXT ADEQUADO

### ❌ ANTES

```html
<img src="images/p01.jpg" alt="img">
<img src="images/p02.jpg" alt="img">
<img src="images/produto1.jpg" alt="ATOMIC70">
```

### ✅ DEPOIS

```html
<img src="images/p01.jpg" 
     alt="Sistema de Endomicroscopia Confocal a Laser Cellvizio para diagnóstico em tempo real" 
     loading="lazy"
     width="400" 
     height="300">

<img src="images/p02.jpg" 
     alt="Endoscópio FUJIFILM de alta definição para procedimentos digestivos" 
     loading="lazy"
     width="400" 
     height="300">

<img src="images/produto1.jpg" 
     alt="Atomic70 - Sistema completo de endoscopia com processadora de imagem 4K" 
     loading="lazy"
     width="800" 
     height="600">
```

---

## 📝 4. FORMULÁRIO DE CONTATO MODERNO

### ❌ ANTES (Iframe Externo)

```html
<script type="text/javascript" defer src="//www.123formbuilder.com/embed/4715143.js" data-role="form"></script>
```

### ✅ DEPOIS (Formulário Próprio)

```html
<form id="contact-form" class="contact-form" method="POST" action="contact-process.php" novalidate>
  
  <!-- Nome -->
  <div class="form-group">
    <label for="name">Nome Completo <span class="required">*</span></label>
    <input type="text" 
           class="form-control" 
           id="name" 
           name="name" 
           required 
           aria-required="true"
           placeholder="Seu nome completo">
    <span class="error-message" id="name-error"></span>
  </div>
  
  <!-- Email -->
  <div class="form-group">
    <label for="email">E-mail <span class="required">*</span></label>
    <input type="email" 
           class="form-control" 
           id="email" 
           name="email" 
           required 
           aria-required="true"
           placeholder="seu@email.com">
    <span class="error-message" id="email-error"></span>
  </div>
  
  <!-- Telefone -->
  <div class="form-group">
    <label for="phone">Telefone <span class="required">*</span></label>
    <input type="tel" 
           class="form-control" 
           id="phone" 
           name="phone" 
           required 
           aria-required="true"
           placeholder="(00) 00000-0000"
           pattern="[\(\d{2}\)]\s\d{4,5}-\d{4}">
    <span class="error-message" id="phone-error"></span>
  </div>
  
  <!-- Assunto -->
  <div class="form-group">
    <label for="subject">Assunto</label>
    <select class="form-control" id="subject" name="subject">
      <option value="">Selecione um assunto</option>
      <option value="orcamento">Solicitar Orçamento</option>
      <option value="assistencia">Assistência Técnica</option>
      <option value="duvida">Dúvida sobre Produto</option>
      <option value="outro">Outro</option>
    </select>
  </div>
  
  <!-- Mensagem -->
  <div class="form-group">
    <label for="message">Mensagem <span class="required">*</span></label>
    <textarea class="form-control" 
              id="message" 
              name="message" 
              rows="5" 
              required 
              aria-required="true"
              placeholder="Digite sua mensagem aqui..."></textarea>
    <span class="error-message" id="message-error"></span>
  </div>
  
  <!-- LGPD Consent -->
  <div class="form-group">
    <div class="checkbox">
      <label>
        <input type="checkbox" 
               id="consent" 
               name="consent" 
               required 
               aria-required="true">
        Concordo com a <a href="politica-privacidade.html" target="_blank">Política de Privacidade</a> e autorizo o uso dos meus dados. <span class="required">*</span>
      </label>
    </div>
    <span class="error-message" id="consent-error"></span>
  </div>
  
  <!-- reCAPTCHA -->
  <div class="form-group">
    <div class="g-recaptcha" data-sitekey="SUA_CHAVE_RECAPTCHA"></div>
  </div>
  
  <!-- Botão de Envio -->
  <div class="form-group">
    <button type="submit" class="btn btn-primary btn-lg">
      <i class="fa fa-paper-plane"></i> Enviar Mensagem
    </button>
  </div>
  
  <!-- Mensagem de Sucesso/Erro -->
  <div id="form-messages" class="alert" style="display: none;"></div>
  
</form>

<!-- JavaScript de Validação -->
<script>
document.getElementById('contact-form').addEventListener('submit', function(e) {
  e.preventDefault();
  
  // Limpar mensagens de erro
  document.querySelectorAll('.error-message').forEach(el => el.textContent = '');
  document.querySelectorAll('.form-control').forEach(el => el.classList.remove('error'));
  
  // Validação
  let isValid = true;
  
  // Nome
  const name = document.getElementById('name');
  if (name.value.trim().length < 3) {
    showError('name', 'Por favor, insira seu nome completo');
    isValid = false;
  }
  
  // Email
  const email = document.getElementById('email');
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email.value)) {
    showError('email', 'Por favor, insira um e-mail válido');
    isValid = false;
  }
  
  // Telefone
  const phone = document.getElementById('phone');
  const phoneRegex = /^\(\d{2}\)\s\d{4,5}-\d{4}$/;
  if (!phoneRegex.test(phone.value)) {
    showError('phone', 'Por favor, insira um telefone válido no formato (00) 00000-0000');
    isValid = false;
  }
  
  // Mensagem
  const message = document.getElementById('message');
  if (message.value.trim().length < 10) {
    showError('message', 'Por favor, insira uma mensagem com pelo menos 10 caracteres');
    isValid = false;
  }
  
  // Consentimento
  const consent = document.getElementById('consent');
  if (!consent.checked) {
    showError('consent', 'Você precisa concordar com a política de privacidade');
    isValid = false;
  }
  
  // Se válido, enviar
  if (isValid) {
    submitForm();
  }
});

function showError(fieldId, message) {
  const errorElement = document.getElementById(fieldId + '-error');
  const inputElement = document.getElementById(fieldId);
  
  errorElement.textContent = message;
  inputElement.classList.add('error');
}

function submitForm() {
  const form = document.getElementById('contact-form');
  const formData = new FormData(form);
  const submitButton = form.querySelector('button[type="submit"]');
  
  // Desabilitar botão
  submitButton.disabled = true;
  submitButton.innerHTML = '<i class="fa fa-spinner fa-spin"></i> Enviando...';
  
  // Enviar via AJAX
  fetch('contact-process.php', {
    method: 'POST',
    body: formData
  })
  .then(response => response.json())
  .then(data => {
    const messagesDiv = document.getElementById('form-messages');
    
    if (data.success) {
      messagesDiv.className = 'alert alert-success';
      messagesDiv.textContent = 'Mensagem enviada com sucesso! Entraremos em contato em breve.';
      messagesDiv.style.display = 'block';
      form.reset();
    } else {
      messagesDiv.className = 'alert alert-danger';
      messagesDiv.textContent = 'Erro ao enviar mensagem. Por favor, tente novamente.';
      messagesDiv.style.display = 'block';
    }
    
    // Reabilitar botão
    submitButton.disabled = false;
    submitButton.innerHTML = '<i class="fa fa-paper-plane"></i> Enviar Mensagem';
    
    // Scroll para mensagem
    messagesDiv.scrollIntoView({ behavior: 'smooth', block: 'center' });
  })
  .catch(error => {
    console.error('Erro:', error);
    const messagesDiv = document.getElementById('form-messages');
    messagesDiv.className = 'alert alert-danger';
    messagesDiv.textContent = 'Erro ao enviar mensagem. Por favor, tente novamente.';
    messagesDiv.style.display = 'block';
    
    submitButton.disabled = false;
    submitButton.innerHTML = '<i class="fa fa-paper-plane"></i> Enviar Mensagem';
  });
}
</script>
```

---

## 🗺️ 5. GOOGLE MAPS CORRIGIDO

### ❌ ANTES

```html
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=en"></script>
```

### ✅ DEPOIS

```html
<!-- Google Maps API -->
<script src="https://maps.googleapis.com/maps/api/js?key=SUA_CHAVE_API&language=pt-BR&callback=initMap" async defer></script>

<div id="map" style="width: 100%; height: 450px;"></div>

<script>
function initMap() {
  // Coordenadas da Golden
  const goldenLocation = { lat: -25.4347203, lng: -49.2773706 };
  
  // Criar mapa
  const map = new google.maps.Map(document.getElementById('map'), {
    zoom: 16,
    center: goldenLocation,
    mapTypeControl: false,
    streetViewControl: false,
    styles: [
      // Estilo customizado (opcional)
      {
        "featureType": "all",
        "elementType": "geometry.fill",
        "stylers": [{ "weight": "2.00" }]
      },
      {
        "featureType": "all",
        "elementType": "geometry.stroke",
        "stylers": [{ "color": "#9c9c9c" }]
      }
    ]
  });
  
  // Criar marcador
  const marker = new google.maps.Marker({
    position: goldenLocation,
    map: map,
    title: 'Golden Equipamentos Médicos',
    animation: google.maps.Animation.DROP,
    icon: {
      url: 'images/map-marker.png',
      scaledSize: new google.maps.Size(50, 50)
    }
  });
  
  // Info Window
  const infoWindow = new google.maps.InfoWindow({
    content: `
      <div class="map-info-window">
        <h4>Golden Equipamentos Médicos</h4>
        <p><strong>Endereço:</strong><br>
        R. Comendador Araújo, 143 - Sala 85<br>
        Centro, Curitiba - PR<br>
        CEP: 80420-000</p>
        <p><strong>Telefone:</strong> (41) 3408-2010</p>
        <a href="https://www.google.com/maps/dir/?api=1&destination=-25.4347203,-49.2773706" 
           target="_blank" 
           class="btn btn-sm btn-primary">
          Como Chegar
        </a>
      </div>
    `
  });
  
  // Abrir info window ao clicar no marcador
  marker.addListener('click', function() {
    infoWindow.open(map, marker);
  });
  
  // Abrir info window automaticamente
  infoWindow.open(map, marker);
}
</script>
```

---

## 📱 6. WHATSAPP BUTTON FLUTUANTE

### ✅ HTML

```html
<!-- WhatsApp Floating Button -->
<a href="https://wa.me/5541XXXXXXXX?text=Olá,%20gostaria%20de%20mais%20informações%20sobre%20os%20produtos%20Golden" 
   class="whatsapp-float" 
   target="_blank"
   rel="noopener noreferrer"
   aria-label="Fale conosco no WhatsApp">
  <i class="fab fa-whatsapp"></i>
  <span class="whatsapp-tooltip">Fale Conosco</span>
</a>
```

### ✅ CSS

```css
/* WhatsApp Floating Button */
.whatsapp-float {
  position: fixed;
  width: 60px;
  height: 60px;
  bottom: 30px;
  right: 30px;
  background-color: #25d366;
  color: #FFF;
  border-radius: 50px;
  text-align: center;
  font-size: 30px;
  box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3);
  z-index: 1000;
  transition: all 0.3s ease;
  display: flex;
  align-items: center;
  justify-content: center;
}

.whatsapp-float:hover {
  background-color: #128C7E;
  transform: scale(1.1);
  box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.4);
  color: #FFF;
  text-decoration: none;
}

.whatsapp-float i {
  margin-top: 3px;
}

/* Tooltip */
.whatsapp-tooltip {
  position: absolute;
  right: 70px;
  background-color: #333;
  color: #fff;
  padding: 8px 12px;
  border-radius: 5px;
  white-space: nowrap;
  opacity: 0;
  visibility: hidden;
  transition: all 0.3s ease;
  font-size: 14px;
}

.whatsapp-tooltip::after {
  content: '';
  position: absolute;
  right: -8px;
  top: 50%;
  transform: translateY(-50%);
  border-left: 8px solid #333;
  border-top: 8px solid transparent;
  border-bottom: 8px solid transparent;
}

.whatsapp-float:hover .whatsapp-tooltip {
  opacity: 1;
  visibility: visible;
}

/* Animação de Pulse */
@keyframes pulse {
  0% {
    box-shadow: 0 0 0 0 rgba(37, 211, 102, 0.7);
  }
  70% {
    box-shadow: 0 0 0 15px rgba(37, 211, 102, 0);
  }
  100% {
    box-shadow: 0 0 0 0 rgba(37, 211, 102, 0);
  }
}

.whatsapp-float {
  animation: pulse 2s infinite;
}

/* Responsivo */
@media (max-width: 768px) {
  .whatsapp-float {
    width: 50px;
    height: 50px;
    font-size: 25px;
    bottom: 20px;
    right: 20px;
  }
  
  .whatsapp-tooltip {
    display: none;
  }
}
```

---

## 🍪 7. COOKIE CONSENT BANNER (LGPD)

### ✅ HTML

```html
<!-- Cookie Consent Banner -->
<div id="cookie-consent" class="cookie-consent" style="display: none;">
  <div class="cookie-consent-content">
    <div class="cookie-text">
      <p>
        <strong>🍪 Este site usa cookies</strong><br>
        Utilizamos cookies para melhorar sua experiência de navegação e analisar o tráfego do site. 
        Ao continuar navegando, você concorda com nossa 
        <a href="politica-privacidade.html" target="_blank">Política de Privacidade</a>.
      </p>
    </div>
    <div class="cookie-buttons">
      <button id="cookie-accept" class="btn btn-primary">Aceitar</button>
      <button id="cookie-decline" class="btn btn-secondary">Recusar</button>
      <button id="cookie-settings" class="btn btn-link">Configurar</button>
    </div>
  </div>
</div>

<!-- Modal de Configurações de Cookies -->
<div id="cookie-settings-modal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title">Configurações de Cookies</h4>
      </div>
      <div class="modal-body">
        
        <!-- Cookies Essenciais -->
        <div class="cookie-category">
          <h5>
            <input type="checkbox" id="essential-cookies" checked disabled>
            <label for="essential-cookies">Cookies Essenciais</label>
          </h5>
          <p>Necessários para o funcionamento básico do site. Não podem ser desativados.</p>
        </div>
        
        <!-- Cookies Analíticos -->
        <div class="cookie-category">
          <h5>
            <input type="checkbox" id="analytics-cookies">
            <label for="analytics-cookies">Cookies Analíticos</label>
          </h5>
          <p>Nos ajudam a entender como os visitantes interagem com o site.</p>
        </div>
        
        <!-- Cookies de Marketing -->
        <div class="cookie-category">
          <h5>
            <input type="checkbox" id="marketing-cookies">
            <label for="marketing-cookies">Cookies de Marketing</label>
          </h5>
          <p>Usados para exibir anúncios relevantes aos visitantes.</p>
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary" id="save-cookie-settings">Salvar Preferências</button>
      </div>
    </div>
  </div>
</div>
```

### ✅ CSS

```css
/* Cookie Consent Banner */
.cookie-consent {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: #fff;
  box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
  padding: 20px;
  z-index: 9999;
  animation: slideUp 0.5s ease;
}

@keyframes slideUp {
  from {
    transform: translateY(100%);
  }
  to {
    transform: translateY(0);
  }
}

.cookie-consent-content {
  max-width: 1200px;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 20px;
}

.cookie-text {
  flex: 1;
}

.cookie-text p {
  margin: 0;
  font-size: 14px;
  line-height: 1.6;
}

.cookie-text a {
  color: #007bff;
  text-decoration: underline;
}

.cookie-buttons {
  display: flex;
  gap: 10px;
  flex-shrink: 0;
}

.cookie-buttons .btn {
  white-space: nowrap;
}

/* Responsivo */
@media (max-width: 768px) {
  .cookie-consent-content {
    flex-direction: column;
    text-align: center;
  }
  
  .cookie-buttons {
    flex-direction: column;
    width: 100%;
  }
  
  .cookie-buttons .btn {
    width: 100%;
  }
}

/* Cookie Settings Modal */
.cookie-category {
  margin-bottom: 20px;
  padding: 15px;
  border: 1px solid #ddd;
  border-radius: 5px;
}

.cookie-category h5 {
  margin: 0 0 10px 0;
  display: flex;
  align-items: center;
  gap: 10px;
}

.cookie-category p {
  margin: 0;
  font-size: 13px;
  color: #666;
}
```

### ✅ JavaScript

```javascript
// Cookie Consent Management
(function() {
  const COOKIE_NAME = 'golden_cookie_consent';
  const COOKIE_EXPIRY_DAYS = 365;
  
  // Verificar se já existe consentimento
  function getCookieConsent() {
    const value = `; ${document.cookie}`;
    const parts = value.split(`; ${COOKIE_NAME}=`);
    if (parts.length === 2) {
      return JSON.parse(parts.pop().split(';').shift());
    }
    return null;
  }
  
  // Salvar consentimento
  function setCookieConsent(consent) {
    const date = new Date();
    date.setTime(date.getTime() + (COOKIE_EXPIRY_DAYS * 24 * 60 * 60 * 1000));
    const expires = `expires=${date.toUTCString()}`;
    document.cookie = `${COOKIE_NAME}=${JSON.stringify(consent)};${expires};path=/;SameSite=Lax`;
  }
  
  // Mostrar banner se necessário
  function showCookieBanner() {
    const consent = getCookieConsent();
    if (!consent) {
      document.getElementById('cookie-consent').style.display = 'block';
    } else {
      // Aplicar preferências
      applyConsent(consent);
    }
  }
  
  // Aplicar consentimento
  function applyConsent(consent) {
    if (consent.analytics) {
      // Ativar Google Analytics
      loadGoogleAnalytics();
    }
    
    if (consent.marketing) {
      // Ativar pixels de marketing
      loadMarketingPixels();
    }
  }
  
  // Aceitar todos os cookies
  document.getElementById('cookie-accept').addEventListener('click', function() {
    const consent = {
      essential: true,
      analytics: true,
      marketing: true,
      timestamp: new Date().toISOString()
    };
    setCookieConsent(consent);
    document.getElementById('cookie-consent').style.display = 'none';
    applyConsent(consent);
  });
  
  // Recusar cookies não essenciais
  document.getElementById('cookie-decline').addEventListener('click', function() {
    const consent = {
      essential: true,
      analytics: false,
      marketing: false,
      timestamp: new Date().toISOString()
    };
    setCookieConsent(consent);
    document.getElementById('cookie-consent').style.display = 'none';
  });
  
  // Abrir configurações
  document.getElementById('cookie-settings').addEventListener('click', function() {
    $('#cookie-settings-modal').modal('show');
  });
  
  // Salvar configurações personalizadas
  document.getElementById('save-cookie-settings').addEventListener('click', function() {
    const consent = {
      essential: true,
      analytics: document.getElementById('analytics-cookies').checked,
      marketing: document.getElementById('marketing-cookies').checked,
      timestamp: new Date().toISOString()
    };
    setCookieConsent(consent);
    $('#cookie-settings-modal').modal('hide');
    document.getElementById('cookie-consent').style.display = 'none';
    applyConsent(consent);
  });
  
  // Carregar Google Analytics
  function loadGoogleAnalytics() {
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-XXXXXXXXXX');
    
    const script = document.createElement('script');
    script.async = true;
    script.src = 'https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX';
    document.head.appendChild(script);
  }
  
  // Carregar pixels de marketing
  function loadMarketingPixels() {
    // Facebook Pixel, etc.
  }
  
  // Inicializar ao carregar página
  document.addEventListener('DOMContentLoaded', showCookieBanner);
})();
```

---

## 🎨 8. FOOTER MODERNO E COMPLETO

### ✅ HTML

```html
<footer class="site-footer">
  <div class="footer-main">
    <div class="container">
      <div class="row">
        
        <!-- Coluna 1: Sobre -->
        <div class="col-md-3 col-sm-6">
          <div class="footer-widget">
            <img src="images/logo-white.svg" alt="Golden Equipamentos Médicos" class="footer-logo">
            <p class="footer-about">
              Distribuidor exclusivo FUJINON no Paraná. Equipamentos médicos de alta qualidade para endoscopia digestiva e cirúrgica.
            </p>
            <div class="footer-social">
              <a href="https://www.facebook.com/goldenequipamentos" target="_blank" rel="noopener" aria-label="Facebook">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="https://www.instagram.com/goldenequipamentos" target="_blank" rel="noopener" aria-label="Instagram">
                <i class="fab fa-instagram"></i>
              </a>
              <a href="https://www.linkedin.com/company/goldenequipamentos" target="_blank" rel="noopener" aria-label="LinkedIn">
                <i class="fab fa-linkedin-in"></i>
              </a>
              <a href="https://www.youtube.com/goldenequipamentos" target="_blank" rel="noopener" aria-label="YouTube">
                <i class="fab fa-youtube"></i>
              </a>
            </div>
          </div>
        </div>
        
        <!-- Coluna 2: Links Rápidos -->
        <div class="col-md-3 col-sm-6">
          <div class="footer-widget">
            <h4 class="footer-title">Links Rápidos</h4>
            <ul class="footer-links">
              <li><a href="index.html">Home</a></li>
              <li><a href="quemsomos.html">Quem Somos</a></li>
              <li><a href="produtos.html">Produtos</a></li>
              <li><a href="assistencia.html">Assistência Técnica</a></li>
              <li><a href="eventos.html">Eventos</a></li>
              <li><a href="blog.html">Blog</a></li>
              <li><a href="contato.html">Contato</a></li>
            </ul>
          </div>
        </div>
        
        <!-- Coluna 3: Produtos -->
        <div class="col-md-3 col-sm-6">
          <div class="footer-widget">
            <h4 class="footer-title">Produtos</h4>
            <ul class="footer-links">
              <li><a href="fujifilm.html">FUJIFILM</a></li>
              <li><a href="atomic70.html">Atomic70</a></li>
              <li><a href="atemoh.html">ATEMOH</a></li>
              <li><a href="produtos.html">Ver Todos</a></li>
            </ul>
            <h4 class="footer-title mt-30">Certificações</h4>
            <div class="footer-certifications">
              <img src="images/cert-anvisa.png" alt="ANVISA" title="Certificado ANVISA">
              <img src="images/cert-iso.png" alt="ISO 9001" title="ISO 9001">
            </div>
          </div>
        </div>
        
        <!-- Coluna 4: Contato -->
        <div class="col-md-3 col-sm-6">
          <div class="footer-widget">
            <h4 class="footer-title">Contato</h4>
            <ul class="footer-contact">
              <li>
                <i class="fas fa-map-marker-alt"></i>
                <span>R. Comendador Araújo, 143 - Sala 85<br>
                Centro, Curitiba - PR<br>
                CEP: 80420-000</span>
              </li>
              <li>
                <i class="fas fa-phone"></i>
                <a href="tel:+554134082010">(41) 3408-2010</a>
              </li>
              <li>
                <i class="fas fa-envelope"></i>
                <a href="mailto:contato@goldenpr.com.br">contato@goldenpr.com.br</a>
              </li>
              <li>
                <i class="fas fa-clock"></i>
                <span>Seg - Sex: 08:00 - 18:00</span>
              </li>
            </ul>
            
            <!-- Newsletter -->
            <div class="footer-newsletter">
              <h5>Newsletter</h5>
              <form id="newsletter-form" class="newsletter-form">
                <div class="input-group">
                  <input type="email" 
                         class="form-control" 
                         placeholder="Seu e-mail" 
                         required
                         aria-label="E-mail para newsletter">
                  <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit">
                      <i class="fas fa-paper-plane"></i>
                    </button>
                  </span>
                </div>
              </form>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </div>
  
  <!-- Footer Bottom -->
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <p class="copyright">
            &copy; 2026 Golden Equipamentos Médicos. Todos os direitos reservados.
          </p>
        </div>
        <div class="col-md-6 text-right">
          <ul class="footer-legal">
            <li><a href="politica-privacidade.html">Política de Privacidade</a></li>
            <li><a href="termos-uso.html">Termos de Uso</a></li>
            <li><a href="sitemap.html">Mapa do Site</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</footer>
```

### ✅ CSS

```css
/* Footer Styles */
.site-footer {
  background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
  color: #fff;
}

.footer-main {
  padding: 60px 0 30px;
}

.footer-widget {
  margin-bottom: 30px;
}

.footer-logo {
  max-width: 180px;
  margin-bottom: 20px;
}

.footer-about {
  font-size: 14px;
  line-height: 1.8;
  color: #b8b8b8;
  margin-bottom: 20px;
}

.footer-title {
  font-size: 18px;
  font-weight: 700;
  margin-bottom: 20px;
  color: #fff;
  position: relative;
  padding-bottom: 10px;
}

.footer-title::after {
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  width: 50px;
  height: 2px;
  background: linear-gradient(90deg, #f59e0b 0%, transparent 100%);
}

/* Social Icons */
.footer-social {
  display: flex;
  gap: 10px;
}

.footer-social a {
  width: 40px;
  height: 40px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 50%;
  color: #fff;
  transition: all 0.3s ease;
}

.footer-social a:hover {
  background: #f59e0b;
  transform: translateY(-3px);
}

/* Footer Links */
.footer-links {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer-links li {
  margin-bottom: 10px;
}

.footer-links a {
  color: #b8b8b8;
  font-size: 14px;
  transition: all 0.3s ease;
  display: inline-block;
}

.footer-links a:hover {
  color: #f59e0b;
  padding-left: 5px;
  text-decoration: none;
}

/* Footer Contact */
.footer-contact {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer-contact li {
  display: flex;
  gap: 15px;
  margin-bottom: 15px;
  font-size: 14px;
  color: #b8b8b8;
}

.footer-contact i {
  color: #f59e0b;
  width: 20px;
  flex-shrink: 0;
  margin-top: 3px;
}

.footer-contact a {
  color: #b8b8b8;
  transition: color 0.3s ease;
}

.footer-contact a:hover {
  color: #f59e0b;
  text-decoration: none;
}

/* Newsletter */
.footer-newsletter {
  margin-top: 20px;
}

.footer-newsletter h5 {
  font-size: 16px;
  margin-bottom: 10px;
}

.newsletter-form .form-control {
  background: rgba(255, 255, 255, 0.1);
  border: 1px solid rgba(255, 255, 255, 0.2);
  color: #fff;
  height: 45px;
}

.newsletter-form .form-control::placeholder {
  color: rgba(255, 255, 255, 0.5);
}

.newsletter-form .btn {
  height: 45px;
  background: #f59e0b;
  border: none;
}

.newsletter-form .btn:hover {
  background: #d97706;
}

/* Certifications */
.footer-certifications {
  display: flex;
  gap: 15px;
  margin-top: 15px;
}

.footer-certifications img {
  height: 50px;
  width: auto;
  opacity: 0.7;
  transition: opacity 0.3s ease;
}

.footer-certifications img:hover {
  opacity: 1;
}

/* Footer Bottom */
.footer-bottom {
  background: rgba(0, 0, 0, 0.2);
  padding: 20px 0;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
}

.copyright {
  margin: 0;
  font-size: 14px;
  color: #b8b8b8;
}

.footer-legal {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  gap: 20px;
  justify-content: flex-end;
}

.footer-legal a {
  color: #b8b8b8;
  font-size: 14px;
  transition: color 0.3s ease;
}

.footer-legal a:hover {
  color: #f59e0b;
  text-decoration: none;
}

/* Responsive */
@media (max-width: 768px) {
  .footer-main {
    padding: 40px 0 20px;
  }
  
  .footer-bottom .text-right {
    text-align: left !important;
    margin-top: 15px;
  }
  
  .footer-legal {
    justify-content: flex-start;
    flex-wrap: wrap;
  }
}
```

---

## 🎯 RESUMO DAS CORREÇÕES

### Principais Mudanças

1. ✅ Tags HTML corrigidas
2. ✅ HTTPS em todos os recursos
3. ✅ SEO otimizado com Schema markup
4. ✅ Formulário próprio com validação
5. ✅ Google Maps moderno
6. ✅ WhatsApp button flutuante
7. ✅ Cookie consent LGPD compliant
8. ✅ Footer moderno e completo

### Benefícios

- 🚀 Performance melhorada
- 🔒 Segurança aumentada
- 📈 SEO otimizado
- ♿ Acessibilidade aprimorada
- 📱 Responsividade garantida
- ⚖️ Conformidade com LGPD

---

**Preparado por:** Antigravity AI  
**Data:** 07/01/2026  
**Versão:** 1.0
