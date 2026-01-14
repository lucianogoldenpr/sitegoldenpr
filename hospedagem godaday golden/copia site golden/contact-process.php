<?php


include dirname(dirname(__FILE__)).'config.php';

error_reporting (E_ALL ^ E_NOTICE);

$post = (!empty($_POST)) ? true : false;

if($post)
{
include 'functions.php';

$name = stripslashes($_POST['name']);
$email = trim($_POST['email']);
$fone = stripslashes($_POST['fone']);
$message = stripslashes($_POST['message']);


$error = '';

// Check name

if(!$name)
{
$error .= 'Por favor, insira o seu nome.<br />';
}

// Check email

if(!$email)
{
$error .= 'Por favor, insira endereço de email.<br />';
}

if($email && !ValidateEmail($email))
{
$error .= 'Por favor insira um endereço de e-mail válido.<br />';
}

// Check message (length)

if(!$message || strlen($message) < 15)
{
$error .= "Digite a sua mensagem Ela deve ter no mínimo 15 caracteres.<br />";
}


if(!$error)
{
ini_set("sendmail_from", WEBMASTER_EMAIL); // for windows server
$mail = mail(WEBMASTER_EMAIL, $fone, $message,
     "From: ".$name." <".$email.">\r\n"
    ."Reply-To: ".$email."\r\n"
    ."X-Mailer: PHP/" . phpversion());


if($mail)
{
echo 'OK';
}

}
else
{
echo '<div class="notification_error">'.$error.'</div>';
}

}
?>