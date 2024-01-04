# estudo-gherkin

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