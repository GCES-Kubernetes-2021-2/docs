# Proposta de Melhoria no Repositório [kubetnets-sigs/descheduler](https://github.com/kubernetes-sigs/descheduler)


Para encontrar possíveis pontos de melhoria que podem ser feitos utilizando conceitos de Clean Code e SOLID nos reposítorios referentes ao projeto Kubernetes, foi utilizada a ferramente [Go Report Card](https://goreportcard.com/), cuja analisa as métricas existentes dentro do reposítorio através da linguagem GO, conselhando mudanças para melhorar a qualidade do código.

A partir do resultado desta ferramenta, os alunos Mateus Gomes e Matheus Afonso identificaram um bom ponto de melhoria no repositório [descheduler](https://github.com/kubernetes-sigs/descheduler), relacionado com a métrica ```gocycle```, que analisa a complexidade de um trecho do código.

O arquivo escolhido para a melhoria foi o ```pkg/utils/qos.go```, no qual está com a complexidade ciclomática de ```19```, ultrapassando o limite de ```15```, como pode ser visto na imagem abaixo.

![Go Report Status](../../../assets/sprint5/mateus_gomes/goreport.jpeg)

## Solução

Após realizar a analise do trecho de código pela ferramenta Go Report Card, é possivel visualizar que a função ```GetPodQOS``` possui muitas responsabilidades dentro de apenas uma função, ferindo o princípio _Single Reponsibility Principle_, sendo esse o primeiro princípio do SOLID, que trata justamente da especialização das classes e métodos existentes dentro de um projeto.

Assim, visando a execução desse princício, foi feita uma refatoração na função apresentada, retirando partes dela para compor outras funções que possuem apenas uma responsabilidade dentro do software. Além dessa refatoração, foram adicionados mais comentários para melhorar a legibilidade e entendimento do código.

O código original e o código refatorado podem ser visualizados abaixo.

### Código Original

![Original Function](../../../assets/sprint5/mateus_gomes/original_func.jpeg)

### Código Refatorado

![Refactoring Proposal](../../../assets/sprint5/mateus_gomes/new_func.jpeg)

## Histórico de Revisão
|Data|Versão|Descrição|Autor|
|:--:|:--:|:--:|:--:|
|07/04/22|0.1|Criação do documento|Matheus Afonso|