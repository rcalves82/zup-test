#language: pt

@magazine_luiza
Funcionalidade: Portal de Vendas Online Magazine Luiza
    Eu como cliente das lojas Magazine Luiza gostaria de uma loja Online
    Para realizar minhas buscas e compras por produtos

    @produto_sacola
    Cenario: Realizar busca de  um produto e inseri-lo na sacola
        Dado que eu esteja no site da Magazine Luiza pela "url"
        E no campo de pesquisa eu informo o nome de um produto "TV"
        Quando o resultado do produto "TV" aparecer na tela clico no produto
        E clico no botão Adicionar à sacola
        Então produto "TV" aparece na sacola de compras

    @produto_inexistente
    Cenario: Realizar busca de  um produto e inseri-lo no carrinho
        Dado que eu esteja no site da Magazine Luiza pela "url"
        Quando no campo de pesquisa eu informo o nome de um produto "79898uyiyuy"
        Então mensagem é informada "não encontrou resultado algum"


    