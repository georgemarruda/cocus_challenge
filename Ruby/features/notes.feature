#language: pt

Funcionalidade: Inserir Notas

Esquema do Cenário: Inserir Notas
    Dado que eu esteja na tela inicial do notes
    Quando eu insiro uma nota com o título <titulo> e descrição <descricao>
    Então eu vejo a listagem de notas com a nota <mensagem>

Exemplos:
| titulo            | descricao                       | mensagem                        |
| "Mr. Tony Stark"  | "Tue, 02 Jan 2018 18:07:59 IST" | "Tue, 02 Jan 2018 18:07:59 IST" |
| ""                | "Tue, 02 Jan 2018 18:07:59 IST" | "Tue, 02 Jan 2018 18:07:59 IST" |
| "Mr. Tony Stark"  | ""                              | "Mr. Tony Stark"                |


Cenário: Visualizar Notas
    Dado que exista uma nota "Mr. Tony Stark"
    Quando eu clico na nota "Tue, 02 Jan 2018 18:07:59 IST"
    Então eu vejo a imagem do android