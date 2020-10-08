#language: pt

@magazine_luiza
Funcionalidade: Portal de Vendas Online Magazine Luiza
    Eu como cliente das lojas Magazine Luiza gostaria de uma loja Online
    Para realizar minhas buscas e compras por produtos

    @pesquisar_produto
    Cenario: Realizar busca de  um produto e inseri-lo na sacola
        Dado que eu esteja no site da Magazine Luiza pela "url"
        Quando pesquiso o nome do produto "Smart TV LED 40"
        Então o produto "Smart TV LED 40" é apresentado com sucesso

    @produto_inexistente
    Cenario: Realizar busca de  um produto e inseri-lo no carrinho
        Dado que eu esteja no site da Magazine Luiza pela "url"
        Quando pesquiso o nome do produto "79898uyiyuy"
        Então mensagem é informada "não encontrou resultado algum"


    