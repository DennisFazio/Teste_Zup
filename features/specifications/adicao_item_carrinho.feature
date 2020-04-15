#language: pt

Funcionalidade: Adicionar um produto ao carrinho de compras
Para validar a inclusão do item desejado no carrinho
Eu como usuário do site quero realizar a busca de um produto
e adicionar o item ao carrinho

Contexto: Estou no site da Americanas
Dado que estou no site da Americanas


@adiciona_item
Cenario: Adicionar item ao carrinho de compras
Quando realizo a busca pelo produto 'Geladeira'
E seleciono a primeira opção da pagina
E adiciono o item ao carrinho
Então valido se o item selecionado foi adicionado ao carrinho