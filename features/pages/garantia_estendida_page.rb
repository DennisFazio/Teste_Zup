# frozen_string_literal: true

class GarantiaEstendida < SitePrism::Page
  element :btn_continuar, 'a[class*="btn--continue"]', text: "continuar"
  element :opc_sem_garantia, "#no-warranty"
  element :opc_1ano_garantia, "#one-year-warranty"
  element :opc_2ano_garantia, "#two-year-warranty"

  def escolher_garantia_em_anos(anos = nil)
    retorno = true
    case anos
    when 0
      opc_sem_garantia.click
    when 1
      opc_1ano_garantia.click
    when 2
      opc_2ano_garantia.click
    else
      retorno = false
    end
    btn_continuar.click
    retorno
  end
end
