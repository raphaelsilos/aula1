# language :pt
Funcionalidade: autenticacao de usuario 

	Para identificar todos os usuarios  
	Como um 
	Eu quero validar usuario

	Cenário: login de usuario valido 
	
		Dado que existe um usuario na base com o login "teste@mcfox.com.br" e senha "123456" 
		Quando o eu acesar  a pagina de loguin 
		E digitar "Email" "teste@mcfox.com.br"
		E digitar "Password" "123456"
		E clicar no botao "Login"
		Então devera ver a mensagem na tela "Signed in successfully."
		
	Cenário: login de usuário invalido
		Dado que existe um usuario na base com o login "teste@mcfox.com.br" e senha "123" 
		Quando o eu acesar  a pagina de loguin 
		E digitar "Email" "teste@mcfox.com.br"
		E digitar "Password" "xxxx"
		E clicar no botao "Login"
		Então devera ver a mensagem na tela "Invalid email or password."
	