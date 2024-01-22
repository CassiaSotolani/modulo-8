#language: pt

Funcionalidade: Login da plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Esquema do Cenário: CT001 - Validar login na plataforma
    Dado que estou na tela de login na plataforma da EBAC
    Quando digitar o usuário <usuario>, a senha <senha> e clicar no botão "Login"
    Então <resultado>
Exemplos: 
    | usuario               | senha     | resultado                                                 |
    | "cassia@ebac.com.br"  | "123*321" | "O usuário dever ser direcionado para a tela de checkout" |
    | "cassia@ebac.com.br"  | "teste"   | "Usuário ou senha inválidos"                              |
    | "cassiaa@ebac.com.br" | "123*321" | "Usuário ou senha inválidos"                              |
    | "sonia@ebac.com.br"   | "321*123" | "O usuário dever ser direcionado para a tela de checkout" |
    | "sonia@ebac.com.br"   | "teste"   | "Usuário ou senha inválidos"                              |
    | "sonia@eebac.com.br"  | "321*123" | "Usuário ou senha inválidos"                              |