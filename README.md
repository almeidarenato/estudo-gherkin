# Estudo sobre gherkin

repositorio onde reuni anotações sobre estudo de gherkin e BDD

# Gherkin

## BDD - Behaviour Driven Development

Gherkin é uma abordagem estruturada para montagem de testes de comportamento , também conhecido como BDD. Ao invés de testar pequenos pedaços de código, os testes de comportamento seguem o fluxo do usuário como se logar, fazer o checkout. O foco é em como o usuário interage com o sistema.

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

Scenario -> Given -> When -> Then 

- Scenario (Cenário) : Todas as ações que um usuario pode tomar (incluindo caminhos felizes/ruins)
- Given: (Dado) É o contexto. Qual a página o usuário está? Ele está logado? Ele é o admin? Ele criou uma campanha?
- When: (Quando) Que ação o usuário está tomando? Qual evento ocorreu?
- Then: (Então) Oque o sistema deve responder para a ação feita? 
Qual o resultado esperado? 

**Exemplo:**
Um usuário quer acessar o dashboard do Mailchimp
- Cenário: Como usuário do Mailchimp , Eu quero acessar minha conta para trabalhar.
- Given: Ele está na página de login
- When : Quando ele digitar suas credenciais corretas e clicar em "Autenticar"
- Then: Leve para o Dashboard com os dados preenchidos dele.


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

#### Palavra Chave  "Feature" 
Funcionalidade de alto nível de um sistema ou epico. Ela agrupa cenários relacionados. Ela possui 3 características: 
- Sumario - Exemplo "Checkout", "Carrinho de Compras" ,   "Autenticação" , "Funcionalidade#112"
- Descrição - Descrição que provê mais detalhes de uma funcionalidade. 
Exemplo: "Carrinho de Compras - O usuário deve poder alterar os itens do carrinho , mudar quantidades , limpar o carrinho"
- Cenários  - Lista de cenários de uma feature de um sistema. É uma situação que pode ser testada. Um exemplo concreto que representa uma regra de negócio.

#### Palavra Chave  "Scenario"  
Um Scenario ou cenário tem 3 características:  
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

Um cenário deve conter uma lista de passos para validar um sistema
Os passos dentro do cenário deverão conter outras palavras chaves do Gherkin.

### Palavra-chave "Given" / "Dado"
Usado para descrever o contexto inicial do cenário. Geralmente algo que ocorreu no passado.

Exemplo: 
- Given Eu estou logado
- Given Eu estou com um produto no carrinho 
- Given Eu tenho um saldo de 20
- Given Eu sou um usuário registrado

### Palavra-chave "When" / "Quando"
Descreve o evento ou a ação .
Acionado por um Ator (uma pessoa interagindo com o sistema ou outro sistema)

Exemplo: 
- When (Quando) Eu clico no botão de login
- When (Quando) Eu clico em adicionar o carrinho
- When (Quando) Eu clico em finalizar a compra
- When (Quando) Eu pressiono o botão de limpar
- When (Quando) Eu recebo a quantia em créditos 

### Palavra-chave "Then" / "Então"
Descreve o resultado, ou a saída esperada.
Deve ser uma saída observável , algo que seja visível para o usuário (uma saída na interface do usuário, um alerta ou um email)
Não deve ser escondido (como uma alteração na base de dados)

- Then (Então) Um e-mail é enviado
- Then (Então) Um alerta aparece na tela
- Then (Então) Um produto é removido do carrinho
- Then (Então) A quantidade do produto é atualizada
- Then (Então) Um produto é adicionado ao carrinho

### Palavra-chave "And" / "E"
usado quando temos multiplos "Given", "When" ou "Then" 
Exemplo: 
(ao invés de repetir o "Given")
- Given Alguma coisa
- And outra coisa
- And mais outra coisa

### Palavra-chave "But" / "Más"
Usado quando o resultado implica em algo negativo 

- Then (Então) um resultado esperado
- But (Más) um resultado que não deve ocorrer

Exemplo: 
- Then (Então) o controle está em modo de edição
- And (e) o botão de salvar está visível
- But (Más) o botão de editar não está visível

### Palavra-chave "*" 
Usado para uma lista de coisas extensa. É opcional e pode ser usado ao invés de "And".

Exemplo: 
- Given Eu estou numa loja de conveniencia
- '*' Eu compro banana
- '*' Eu compro maçã
- '*' Eu compro laranja


### Palavras-chave Secundárias

#### Palavra-chave "Rule"
Agrupa um ou mais cenários juntos que utilizam a mesma regra de negócio . É um mecanismo simples de agrupamento e opcional. Adicionado no Gherkin 6 então nem sempre estará disponível no cucumber

#### Palavra-chave "Background"
Serve para evitar a necessidade de repetir um "Given", desde que seja compartilhado entre os cenários.

#### Palavra-chave "Scenario Outline/Examples"
Permite "rodar" o mesmo cenário multiplas vezes com diferentes combinações de valores

Ao invés de escrever assim: 
- Scenario: example
- Given produto tem o estoque nivel 10
- When A quantidade do carrinho mudar para 2
- Then A quantidade do nível do estoque muda para 8
---
- Scenario: example 2
- Given produto tem o estoque nivel 8
- When A quantidade do carrinho mudar para -1
- Then A quantidade do nível do estoque muda para 9

É possível usar assim: 

- SCENARIO OUTLINE: 
- Given produto tem o estoque nivel ```<inicio>```
- When A quantidade do carrinho mudar para ```<carrinho>```
- Then A quantidade do nível do estoque muda para ```<fim>```

EXAMPLES:
``````
|inicio  | carrinho | fim  |
|  10    |     2    | 8    |
|  9     |    -1    | 10   |
``````

#### Palavra-chave @ Tag

Pode ser usado para categorizar um cenário ou funcionalidade 

Exemplo: 

@tagdeexemplo
FEATURE alguma funcionalidade

@outratag
@maisumatag
SCENARIO ...
GIVEN ...

Importante: A palavra @ignore é reservada , o cucumber irá ignorar esse cenário


### Comentários no Gherkin
Os comentários no Gherkin são precedidos pelo simbolo #

```# algum comentário```
- FEATURE alguma funcionalidade

ou 

- GIVEN alguma condiçao
```# algum comentário```
- WHEN alguma ação
- THEN algum resultado

### Comentários longos com Doc Strings
Os DOC Strings são usados para comentários longos e devem ficar em volta de 3x """ (aspas duplas) ou 3 acentos invertidos ```

(no markdown pode aparecer um espaço antes do ``` para que o caractere  apareça apenas sem formatar o texto ) 

``` 
 """   
algum texto de exemplo
=========================
Algum texto de exemplo longo par algum passo 
 """   
```
ou
``` 
    ```
algum texto de exemplo
=========================
Algum texto de exemplo longo par algum passo 
    ```
```