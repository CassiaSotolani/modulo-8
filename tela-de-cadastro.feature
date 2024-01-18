Feature: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Scenario Outline: CT001 - Validar cadastro na plataforma
    Given que estou na tela de cadastro - checkout na plataforma da EBAC
    And informo o nome <nome>
    And informo o sobrenome <sobrenome>
    And seleciono um País <pais>
    And informo o endereço <endereco>
    And informo a cidade <cidade>
    And informo o CEP <cep>
    And informo o telfone <telefone>
    And informo o e-mail <email>
    When clicar no botão "FINALIZAR COMPRA"
    Then <resultado>
Examples: 
    | nome     | sobrenome   | pais   | endereco                       | cidade     | cep         | telefone       | email                   | resultado                                          |
    | "Cassia" | "Sotolani"  | Brasil | "Rua Mozart Calheiros, Nº 540" | "Dourados" | "79811-010" | "6799826-2989" | "ca.sotolani@gmail.com" | "Cadastro realizaro com sucesso"                   |
    | "Sônia"  | "Sotolani"  | Brasil | "Rua Mozart Calheiros, Nº 540" | "Dourados" | "79811-010" | "6799697-0246" | "sosotolani@gmail.com"  | "Cadastro realizaro com sucesso"                   |
    |          | "Sotolani"  | Brasil | "Rua Mozart Calheiros, Nº 540" |            | "79811-010" | "6799697-0246" | "sosotolani@gmail.com"  | "Campos Nome e Cidade são obrigatórios"            |
    | "Cassia" | "Sotolani"  |        | "Rua Mozart Calheiros, Nº 540" | "Dourados" | "79811-010" |                | "ca.sotolani@gmail.com" | "Campos País e Telefone são origatórios"           |
    | "Cassia" |             | Brasil |                                | "Dourados" |             | "6799826-2989" | "ca.sotolani@gmail.com" | "Campos Sobrenome, Endereço e CEP são origatórios" |
    | "Cassia" | "Sotolani"  | Brasil | "Rua Mozart Calheiros, Nº 540" | "Dourados" | "79811-010" | "6799826-2989" |                         | "Campo E-mail obrigatório"                         |
    | "Sônia"  | "Sotolani"  | Brasil | "Rua Mozart Calheiros, Nº 540" | "Dourados" | "79811-010" | "6799697-0246" | "sosotolanigmail.com"   | "Erro! E-mail com formato inválido"                |
    | "Cassia" | "Sotolani"  | Brasil | "Rua Mozart Calheiros, Nº 540" | "Dourados" | "79811-010" | "6799826-2989" | "ca.sotolani@gmail"     | "Erro! E-mail com formato inválido"                |


#OBS: tem dois campos "País" - um obrigatório (campo selected) e outro opcional (campo aberto para texto). Acredito que seja uma falha no sistema.
#OBS2: está faltando o campo de "Estado". Acredito que esse campo seja de suma importância para realizar uma entrega de forma rápida e efetiva.
#Sugestão: Podemos pegar o segundo campo "País" e alterar para "Estado", tornando ele obrigatório também.