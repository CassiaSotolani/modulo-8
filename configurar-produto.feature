Feature: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Background:
    Given que acesse a página do produto

Scenario: CT001 - Adicionar produto no carrinho
    And seleciono uma cor disponível
    And seleciono um tamanho disponível
    And seleciono no máximo 10 itens
    When clicar no botão "Comprar"
    Then será apresentado a mensagem "Produto adicionado no carrinho com sucesso!"


Scenario Outline: CT002 - Validar seleção de cor
    And seleciono um tamanho disponível
    And seleciono no máximo 10 itens
    When clicar no botão <botao>
    Then será apresentado uma mensagem <mensagem>
Examples: 
    | botao   | mensagem          |
    | Comprar | Selecione uma cor |


Scenario Outline: CT003 - Validar seleção de tamanho
    And seleciono uma cor disponível
    And seleciono no máximo 10 itens
    When clicar no botão <botao>
    Then será apresentado uma mensagem <mensagem>
Examples: 
    | botao   | mensagem             |
    | Comprar | Selecione um tamanho |


Scenario Outline: CT004 - Validar quantidade de itens
    And seleciono uma cor disponível
    And seleciono um tamanho disponível
    And seleciono <itens> itens do produto
    When clicar no botão <botao>
    Then será apresentado uma mensagem <mensagem>
Examples: 
    | itens | botao   | mensagem                                          |
    | 11    | Comprar | Selecione no máximo 10 itens do mesmo produto     |
    | 10    | Comprar | Produto adicionado no carrinho com sucesso!       |
    | 9     | Comprar | Produto adicionado no carrinho com sucesso!       |


Scenario: CT005 - Validar botão "Limpar"
    And seleciono uma cor disponível
    And seleciono um tamanho disponível
    And seleciono no máximo 10 itens
    When clicar no botão "Limpar"
    Then todos os campos devem voltar ao estado original