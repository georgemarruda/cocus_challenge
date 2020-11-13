#language: pt

Funcionalidade: Inserir Notas

Esquema do Cenário: Inserir Notas
    Dado que eu esteja na tela inicial do notes
    Quando eu insiro uma nota com o título <titulo> e descrição <descricao>
    Então eu vejo a listagem de notas com a nota <mensagem>

Exemplos:
| titulo            | descricao          | mensagem           |
| "Tarefa Semanal"  | "Tarefas do filho" | "Tarefa Semanal"   |
| ""                | "Tarefas do filho" | "Tarefas do filho" |
| "Tarefa Semanal"  | ""                 | "Tarefa Semanal"   |


Cenário: Visualizar Notas
    Dado que exista uma nota "Tarefa Semanal"
    Quando eu clico na nota "Tarefa Semanal"
    Então eu vejo a imagem do android