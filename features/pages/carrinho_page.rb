# frozen_string_literal: true
require "./features/support/entity/item_carrinho.rb"

class Carrinho < SitePrism::Page
  elements :itens_carrinho, ".BasketItem-productContainer"

  def itens_no_carrinho
    #all('.BasketItem-productContainer')[0].find('.BasketItemProduct').find('.BasketItemProduct-info-title').text
    itens = []
    itens_carrinho.each do |row|
      obj = ItenCarrinho.new
      obj.descricao = row.find(".BasketItemProduct").find(".BasketItemProduct-info-title").text.gsub(/\Wn............................/, "")
      obj.preco = row.find(".BasketItemProduct-price").text
      itens.push (obj)
    end
    itens
  end
end
