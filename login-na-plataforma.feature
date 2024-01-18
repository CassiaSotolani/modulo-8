Feature: Login da plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Scenario Outline: CT001 - Validar login na plataforma
    Given que estou na tela de login na plataforma da EBAC
    When eu digitar o usuário <usuario>
    And a senha <senha>
    And clicar no botão "Login"
    Then <resultado>
Examples: 
    | usuario               | senha     | resultado                                                 |
    | "cassia@ebac.com.br"  | "123*321" | "O usuário dever ser direcionado para a tela de checkout" |
    | "cassia@ebac.com.br"  | "teste"   | "Usuário ou senha inválidos"                              |
    | "cassiaa@ebac.com.br" | "123*321" | "Usuário ou senha inválidos"                              |
    | "sonia@ebac.com.br"   | "321*123" | "O usuário dever ser direcionado para a tela de checkout" |
    | "sonia@ebac.com.br"   | "teste"   | "Usuário ou senha inválidos"                              |
    | "sonia@eebac.com.br"  | "321*123" | "Usuário ou senha inválidos"                              |