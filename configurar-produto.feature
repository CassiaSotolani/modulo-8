#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
    Dado que eu acesse a página do produto

Cenário: CT001 - Adicionar produto no carrinho
    Quando seleciono uma cor, tamanho, no máximo 10 itens do produto e clico no botão "Comprar"
    Então será apresentado a mensagem "Produto adicionado no carrinho com sucesso!"

Esquema do Cenário: CT002 - Validar seleção de cor
    Quando seleciono um tamanho, no máximo 10 itens do produto e clico no botão "Comprar"
    Então será apresentado uma mensagem <mensagem>
Exemplos: 
    | mensagem            |
    | "Selecione uma cor" |

Esquema do Cenário: CT003 - Validar seleção de tamanho
    Quando seleciono uma cor, no máximo 10 itens do produto e clico no botão "Comprar"
    Então será apresentado uma mensagem <mensagem>
Exemplos: 
    | mensagem               |
    | "Selecione um tamanho" |

Esquema do Cenário: CT004 - Validar quantidade de itens
    Quando seleciono uma cor, tamanho, <itens> itens do produto e clico no botão "Comprar"
    Então será apresentado uma mensagem <mensagem>
Exemplos: 
    | itens | mensagem                                          |
    | "11"  | "Selecione no máximo 10 itens do mesmo produto"   |
    | "10"  | "Produto adicionado no carrinho com sucesso!"     |
    | "9"   | "Produto adicionado no carrinho com sucesso!"     |

Cenário: CT005 - Validar botão "Limpar"
    Quando seleciono uma cor, tamanho, no máximo 10 itens do produto e clico no botão "Limpar"
    Então todos os campos devem voltar ao estado original