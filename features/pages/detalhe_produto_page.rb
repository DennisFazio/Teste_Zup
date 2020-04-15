# frozen_string_literal: true

class DetalheProduto < SitePrism::Page
  element :btn_adicionar_sacola, 'span[class="button__text"]', text: "Adicionar à sacola"
  element :select_voltagem, 'select[data-attribute-type="voltage"]'

  def clica_adicionar_carrinho
    btn_adicionar_sacola.click
  end

  def escolher_voltagem(voltagem)
    retorno = false
    if page.has_selector? 'select[data-attribute-type="voltage"]'
      select_voltagem.select(voltagem)
      retorno = true
    end
    retorno
  end
end
