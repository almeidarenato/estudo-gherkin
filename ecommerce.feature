#Language: pt

Funcionalidade: Como cliente eu devo poder editar os itens do meu carrinho de compras, quantidades e finalizar a compra

        Cenário: Como cliente eu posso adicionar um item no meu carrinho de compras
            Dado eu estar na página de detalhes do produto
              E o produto possui estoque
              E esse produto não está no carrinho
             Quando eu clicar em adicionar ao carrinho
             Então o produto é adicionado ao carrinho
              E eu devo visualizar uma mensagem
              E o nível de estoque é reduzido por 1
        
        Cenário: Como cliente eu posso remover um item do meu carrinho de compras
            Dado eu estar na página de carrinho de produto
             Quando eu clicar em no botão de remover do produto
             Então o produto é removido do carrinho
        
        Cenário: Como cliente eu posso ver os itens do meu carrinho de compras
            Dado eu estou na home page
             Quando eu clicar no ícone de carrinho de compras
             Então eu devo visualizar uma lista de itens adicionados

        Cenário: Como cliente eu posso finalizar minhas compras do meu carrinho de compras
            Dado eu estar na página de carrinho de produto
             Quando eu clicar no botão de finalizar compra
             Então eu devo ser levado para página de checkout
        