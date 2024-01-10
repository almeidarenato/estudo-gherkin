#Language: pt

Funcionalidade: Interações com Carrinho de Compras
Como um cliente eu quero poder editar os itens do meu carrinho de compras, quantidades para que eu possa ajustar minha compra antes de finaliza-la.
        Contexto:
            Dado o produto "X" possui estoque "2"
              E o produto "Y" possui estoque "0"
              E esse produto "Z" possui o estque "2"
              E o produto "X" possui a quantidade "0" no carrinho
              E o produto "Y" possui a quantidade "0" no carrinho
              E o produto "Z" possui a quantidade "1" no carrinho
         
        
        Cenário: Como cliente eu posso adicionar um item no meu carrinho de compras
            Dado eu estar na página de detalhes do produto do produto "X"
             Quando eu clicar em adicionar ao carrinho
             Então o produto "X" é adicionado a quantidade de "1"
              E eu devo visualizar uma mensagem
              E o nível de estoque do produto "X" deve se tornar "0"

        Cenário: Como usuário eu devo conseguir me autenticar na minha conta usando minhas credenciais
            Dado o usuário estar na página de login
              E o botão de login está sendo mostrado
             Quando o usuário informar  o seu usuário correto
              * o usuário informar a senha correta
              * o usuário clicar no botão de login
             Então o usuário deve conseguir entrar na página da sua conta
              E deve visualizar as suas informações

        Cenário: Como cliente eu devo conseguir aplicar um cupom de desconto válido
            Dado o usuário estar visualizando o carrinho de compras
             * Produto "X"
             * Produto "Y"
             * Produto "Z"
             Quando eu aplicar o cupom de desconto
             Então o desconto é validado
              E o preço é atualizado

        # como um cliente eu devo conseguir criar uma conta se eu informar um usuario, senha , clicar em registrar. Eu devo ser levado a página de minha conta
        Cenário: Como cliente eu devo conseguir criar uma conta
            Dado o cliente está acessando a página de cadastro de nova conta
              E o botão de registro está sendo exibido
             Quando o cliente informar o nome de usuário
              E o cliente informar uma senha
              E o cliente clicar em registrar
             Então o usuário deverá ser cadastrado com as informações fornecidas com uma mensagem de sucesso
              E ser redirecionado para a página de minha conta

        
        # produto não possui estoque  e não está no carrinho
        Cenário: Como cliente eu não posso incluir um item no meu carrinho se ele não possui estoque
            Dado eu estar na página de detalhes do produto
              E o produto não possui estoque
              E esse produto não está no carrinho
             Quando eu clicar em adicionar ao carrinho
             Então eu devo visualizar uma mensagem
              Mas o produto não é adicionado ao carrinho
              E o nível de estoque não sofre mudanças
        
        # produto tem estoque e já está no carrinho
        Cenário: Como cliente eu não posso incluir um item no meu carrinho se ele já estiver no carrinho
            Dado eu estar na página de detalhes do produto
              E o produto possui estoque
              E esse produto está no carrinho
             Quando eu clicar em adicionar ao carrinho
             Então o produto não é adicionado ao carrinho
              E eu devo visualizar uma mensagem
              E a quantidade do produto no carrinho deve subir em 1
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
        