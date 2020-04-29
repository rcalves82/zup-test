# frozen_string_literal: true
require 'rspec'

class BuscarProduto
  include Capybara::DSL

  def url(site)
    site = visit 'https://www.magazineluiza.com.br/'
    Capybara.page.driver.browser.manage.window.maximize
  end

  def realizar_busca(nome_produto)
    find('input[id=inpHeaderSearch').set nome_produto
    find('input[id=inpHeaderSearch]').send_keys(:enter)
  end
end
