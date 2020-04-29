# zup-test

## Testes automatizados
Esse teste tem como objetivo realizar uma busca de um produto no site de uma loja online.

## Pré Requisitos

- Ter o ruby instalado com as gems na máquina
- Link de instalação (https://medium.com/@pedrohenriquemartins_43091/iniciando-com-automa%C3%A7%C3%A3o-de-teste-utilizando-ruby-3a0bd4e2469b) 

## How to use
- Abra o terminal service
- Acesse o diretório zup-test e execute os testes de front nos browsers com os comandos abaixo:
   * Digite "cucumber headless=true" para execução no headless.
   * Digite "cucumber chrome=true" para execução no chrome.
   * Digite "cucumber firefox=true" para execução no firefox.
   * Digite "cucumber (escolha "chrome, headless, firefox")=true --format html --out=log/report.html" para executar e gerar relatório que esta no diretório log.