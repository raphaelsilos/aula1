Dado /^que existe um usuario na base com o login "(.*)" e senha "(.*)"$/ do |email, senha|
User.create :email => email , :password => senha , :password_comfirmation => senha    
end

Quando /^o eu acesar  a pagina de loguin$/ do
  visit "/dashboard"
end

Quando /^digitar "(.*)" "(.*)"$/ do |campo, valor|
  fill_in(campo,:with => valor) 
end

Quando /^clicar no botao "(.*)"$/ do |nomeBotao|
  click_button(nomeBotao)
end

Então /^devera ver a mensagem na tela "(.*)"$/ do |msg|
  page.should have_content(msg) 
end
