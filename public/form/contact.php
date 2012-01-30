<?php
// Change the 4 variables below
$yourName = 'Your Name';
//$yourEmail = 'jonathanmiljour@brosseau.qc.ca';
$yourEmail = 'david.lascombe@gmail.com';
$yourSubject = 'Contact depuis le site Web de Brosseau';
$referringPage = 'http://brosseau.qc.ca';

// variables
$nom = $_POST['name'];
$email = $_POST['email'];
$content = $_POST['message'];


// No need to edit below unless you really want to. It's using a simple php mail() function. Use your own if you want
function cleanPosUrl ($str) 
{
	return stripslashes($str);
}
	
	
	
		$to = $yourEmail;
		$subject = $yourSubject;
		$message = cleanPosUrl("Nom : ".$nom."\r\n\n");
		$message .= cleanPosUrl("Email : ".$email."\r\n\n");
		$message .= cleanPosUrl("Message : ".$content."\r\n\n");
		$headers = "From: contact@brosseau.qc.ca\r\n";
		$headers .= 'To: '.$yourName.' <'.$yourEmail.'>'."\r\n";
		$mailit = mail($to,$subject,$message,$headers);
			if ( $mailit ) {
			header('Location: '.$referringPage.'?mail_sent=true');
			}
			else {
			header('Location: '.$referringPage.'?error=true');
			}
		
?>