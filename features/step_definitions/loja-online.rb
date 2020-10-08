# frozen_string_literal: true

Dado('que eu esteja no site da Magazine Luiza pela {string}') do |site|
  @magazine_luiza.url(site)
end

Quando("pesquiso o nome do produto {string}") do |produto|
  @magazine_luiza.realizar_busca(produto)
end

Então("o produto {string} é apresentado com sucesso") do |produto|
  expect(page).to have_content produto
end

# ===================== Produto inexistente===========================
Então('mensagem é informada {string}') do |mensagem|
  expect(page).to have_content mensagem
end
