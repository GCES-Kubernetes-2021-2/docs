# Issue [#AMMP controller watch event mapping function from CAPI machine pools using wrong GVK](https://github.com/kubernetes-sigs/cluster-api-provider-azure/issues/2058)

A issue escolhida para execução foi uma issue de um bug onde o azure managed machine pool controller não executava os eventos monitorados por ele. Aparentemente o problema era a utilização de um package no setup da watch.

Quando li sobre a issue resolvi dar assign, e, durante a resolução, o próprio criador da issue, que não estava como assign, subiu a solução dele que foi aceita.

## Discussão da Issue

![Issue Opened](../../../assets/sprint1/issue2058/print1.png)

![Issue Conversation](../../../assets/sprint1/issue2058/print2.png)

![Issue Conversation](../../../assets/sprint1/issue2058/print3.png)

## Histórico de Revisão
|Data|Versão|Descrição|Autor|
|:--:|:--:|:--:|:--:|
|10/02/22|0.1|Criação do documento|Thiago Mesquita|