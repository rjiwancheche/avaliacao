<?php

		$nomeCliente = $_POST['nome'];
		echo$nomeCliente;

		//distribuindo a informação a ser enviada
		$post = array('post1' => 'Romano Jose');

		$pagina = getPage("http://localhost/avaliacao/clientes_db.php", $post);
		echo$pagina;

		function getPage ($url, $post) { 

         $timeout= 120; 
         $dir = dirname(__FILE__); 
         $cookie_file = $dir . '/cookies/' . md5($_SERVER['REMOTE_ADDR']) . '.txt';
         $ch = curl_init($url);
         
         			curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
			
                  curl_setopt($ch, CURLOPT_FAILONERROR, true);
                  curl_setopt($ch, CURLOPT_HEADER, 0); 
                  curl_setopt($ch, CURLOPT_COOKIEFILE, $cookie_file); 
                  curl_setopt($ch, CURLOPT_COOKIEJAR, $cookie_file);
                  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true );
                  curl_setopt($ch, CURLOPT_ENCODING, "" ); 
                  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true ); 
                  curl_setopt($ch, CURLOPT_AUTOREFERER, true );
                  curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout );
                  curl_setopt($ch, CURLOPT_TIMEOUT, $timeout );
                  curl_setopt($ch, CURLOPT_MAXREDIRS, 10 );
                  curl_setopt($ch, CURLOPT_REFERER, 'http://localhost/avaliacao/clientes_db.php');
						
                  $pagina = curl_exec($ch);
                  if(curl_errno($ch)) echo 'error:' . curl_error($ch); 
                  else return $pagina;    
			
         curl_close($ch);		
      }

?>