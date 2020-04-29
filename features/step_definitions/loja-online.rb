# frozen_string_literal: true

Dado('que eu esteja no site da Magazine Luiza pela {string}') do |site|
  @magazine_luiza.url(site)
end

Dado('no campo de pesquisa eu informo o nome de um produto {string}') do |produto|
  @magazine_luiza.realizar_busca(produto)
end

Quando('o resultado do produto {string} aparecer na tela clico no produto') do |produto|
  expect(find('#main-title > strong').text).to have_content produto
  achei_produto = find('#product_193425500 > div.nm-product-info > h2')
  achei_produto.click  
end

Quando('clico no botão Adicionar à sacola') do
  click_button 'Adicionar à sacola'
end

Então('produto {string} aparece na sacola de compras') do |produto|
  expect(find('.header-tip__product-txt').text).to have_content produto
end

# ===================== Produto inexistente===========================
Então('mensagem é informada {string}') do |mensagem|
  expect(find('.nm-not-found-message1').text).to have_content mensagem
end
