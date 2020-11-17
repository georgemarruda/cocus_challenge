# language: pt

@tests
Funcionalidade: Inserir Notas

  Esquema do Cenario: Inserir Notas
    Dado que eu esteja na tela inicial do notes
    Quando eu insiro uma nota com o titulo <titulo> e descricao <descricao>
    Entao eu vejo a listagem de notas com a nota <mensagem>

    Exemplos:
      | titulo             | descricao                       | mensagem                        |
      | "Mr. Tony Stark"   | "Tue, 02 Jun 2020 18:07:59 IST" | "Tue, 02 Jun 2020 18:07:59 IST" |
      | ""                 | "Tue, 02 Jan 2018 18:07:59 IST" | "Tue, 02 Jan 2018 18:07:59 IST" |
      | "Mr. Steve Rogers" | ""                              | "Steve Rogers"                  |

  Cenario: Visualizar Notas
    Dado que exista uma nota com o titulo "Mr. Robot" e descricao "Tue, 06 Jan 2010 16:07:59 IST"
    Quando eu clico na nota existente
    Entao eu vejo a imagem do android