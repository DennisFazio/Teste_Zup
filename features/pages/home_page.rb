# frozen_string_literal: true

class HomePage < SitePrism::Page
  set_url ""

  element :barra_pesquisa, "#inpHeaderSearch"
  element :btn_pesquisa, "#btnHeaderSearch"
  elements :resultado_pesquisa, 'ul[class="productShowCase big"]'
  element :primeiro_produto, ".product", match: :first

  def realiza_pesquisa(produto)
    barra_pesquisa.set produto
    btn_pesquisa.click
  end

  def seleciona_primeiro_item
    produto = primeiro_produto.text
    primeiro_produto.click
    produto
  end
end
