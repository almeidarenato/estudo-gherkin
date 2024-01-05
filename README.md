# Estudo sobre gherkin

repositorio onde reuni anotações sobre estudo de gherkin e BDD

# Gherkin

## BDD - Behaviour Driven Development

Encoraja colaboração entre times

Ajuda a obter entendimento compartilhado do problema

Pequenas e rápidas interações para ter conseguir rápidos retornos

Produz documentação compatível com o comportamento do sistema

## Cucumber

Programa Opensource que suporte BDD

Ofere formas de escrever cenários/ testes que qualquer um entenda

Disponível em diversas linguagens

- Java, Ruby , .net , javascript

## Cucumber X Gherkin

O cucumber usa o gherkin para escrever testes de aceite/ cenários com uma sintáxe particular.

Essa sintaxe do Gherkin que pode ser passada para o Cucumber para dar o Aceite/ Falha de um cenário criado para validar esse cenário

## Porque aprender Gherkin

Essencial ao aplicar BDD/ Cucumber

Amplamente usado por profissionais de testes

Amplamente usado por Analistas de Negócio

## Coleta e Análise de Requisitos

Normalmente a coleta de requisitos é feita de forma bastante informal e desorganizada

- Sessões de Whiteboard
- Reuniões formais
- Conversas na mesa
- E-mails
- Documentos
- Conversas por Telefone
- Anotações no papel
- Validação dos requisitos

Com este método é comum haver interpretações erradas e expectativas desalinhadas,itens esquecidos.
Gherkin é um formato para capturar esses requisitos e se torna a única fonte da verdade (SSOT - Single Source of Truth)

## Documentando User Stories - Histórias de Usuário

Descrição informal da jornada de usuário em uma feature/funcionalidade
Escrita usando a perspectiva do usuário
Deve haver um critério de aceite - um resultado esperado
Deve haver uma ação que o usuário deve performar
Deve haver um critério/ condições para que a ação ocorra
Faz parte do Agile / Kanban

Para fazer uma "User Story" de sucesso precisamos saber : 
- Papel/Ator envolvido - Quem está envolvido na ação
- Condições - Pré requisitos (Ex.: O usuário precisa estar logado)
- Ação - Oque deve ser feito (ex.: O usuário clica no botão)
- Resultado - Oque deverá ocorrer

Exemplo de cenário
Qual será a chamada para a ação (CTA)? É um botão ?
Um Consumidor deve clicar em um botão no site
Qual o papel/ator ?  Consumidor

História do Usuário / User Story : 
Um Consumidor clicar no botão de compra na página do produto e o produto é adicionado ao carrinho de compras

Traduzindo para o Gherkin usando as palavras chaves : 


|           |                 UserStory                 | Gherkin |
|:---------:|:-----------------------------------------:|:-------:|
|   Quem?   |                Consumidor                 |  Given  |
| Condição  |           Na Página do Produto            |  Given  |
|   Ação    |        Clicar no botão de comprar         |  When   |
| Resultado | Produto Adicionado ao Carrinho de Compras |  Then   |

## Testando com Gherkin

Apesar dele estar vinculado ao Cucumber para permitir o teste automatizado ele pode ser feito de forma Manual.
Os requisitos de negócio devem alimentar o plano de testes.
Testes automatizados devem dar feedback ao time de testes relatando o ocorrido. 

Os testes **automatizados** são um recurso a mais para a equipe de testes que a  melhora ao invés de substituí-la .
Independente de quanto for bom o teste automatizado isso não substitui o teste manual.

## Gherkin como um SSOT (Single source of truth - Unica fonte da verdade)

O principio do Gherkin é ser uma Unica fonte da verdade, de diversas fontes / recursos.

Fontes : 
- Requisitos de Negócio
- User Stories
- Testes Manuais
- Testes Automatizados
- Documentação do Sistema

## Gherkin Linguagem

### Palavras Chave

O Gherkin é um conjunto de regras gramáticas estruturadas em uma forma determinada. Construída em uma linguagem de fácil entendimento .

Palavra Chave  "Feature" - 
Funcionalidade de alto nível de um sistema ou epico. Ela agrupa cenários relacionados. Ela possui 3 características: 
- Sumario - Exemplo "Checkout", "Carrinho de Compras" ,   "Autenticação" , "Funcionalidade#112"
- Descrição - Descrição que provê mais detalhes de uma funcionalidade. 
Exemplo: "Carrinho de Compras - O usuário deve poder alterar os itens do carrinho , mudar quantidades , limpar o carrinho"
- Cenários  - Lista de cenários de uma feature de um sistema. É uma situação que pode ser testada. Um exemplo concreto que representa uma regra de negócio.

### Cenários
Um cenário tem 3 características:  
 - Sumário - Exemplos de um sumário para um cenário:

   - "O usuário pode ver os detalhes de um produto"
   - "O usuário pode adicionar um produto no carrinho"
   - "O usuário pode finalizar a compra da página de carrinho de compras"
   - "O usuário pode aumentar a quantidade de produtos no carrinho"
   - "O usuário pode limpar os produtos do carrinho"
   - "O usuário pode mudar a senha"

    Exemplos de Cenários ruins
    - "O usuário pode usar a página" - Muito vago
    - "Usuário pode fazer uma compra" - Não é especifico o suficiente nao fornece uma ação em algum lugar específico.
    

 - Descrição - Tem um papel de fornecer mais detalhes sobre o cenário. É opcional porém é recomendado para fins de documentação. A inclusão dela deixa o sumário mais preciso.
 Exemplo: 
 **Sumario:** "O usuário pode finalizar a compra na página do carrinho"
 **Descrição:** "o usuário deve conseguir clicar no botão de finalizar compra para ir para a página de finalização de compra , quando estiver visualizando a página de carrinho"

 - Lista de Passos

