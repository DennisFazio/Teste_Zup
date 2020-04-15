Dado("que estou no site da Americanas") do
  @homepage.load
end

Quando("realizo a busca pelo produto {string}") do |produto|
  @homepage.realiza_pesquisa(produto)
end

Quando("seleciono a primeira opção da pagina") do
  @produto_selecionado = @homepage.seleciona_primeiro_item
end

Quando("adiciono o item ao carrinho") do
  ret = @detalheproduto.escolher_voltagem(110)
  expect(ret).to eql(true)
  @detalheproduto.clica_adicionar_carrinho
  ret = @garantiaestendida.escolher_garantia_em_anos(0)
  expect(ret).to eql(true)
end

Então("valido se o item selecionado foi adicionado ao carrinho") do
  itens = @carrinho.itens_no_carrinho
  expect(itens[0].descricao[0, 45]).to eql(@produto_selecionado[0, 45])
end
