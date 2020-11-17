package StepsDefinitions;

import cucumber.api.java.es.Dado;
import cucumber.api.java.it.Quando;
import cucumber.api.java.pt.Entao;
import screens.NoteScreen;

public class NotesSteps {

    NoteScreen notes;

    public NotesSteps() {

        notes = new NoteScreen();
    }

    @Dado("^que eu esteja na tela inicial do notes$")
    public void queEuEstejaNaTelaInicialDoNotes()  {
        this.notes.validateScreenHome();
    }

    @Quando("^eu insiro uma nota com o titulo \"([^\"]*)\" e descricao \"([^\"]*)\"$")
    public void euInsiroUmaNotaComOTituloEDescricao(String title, String description) {
        this.notes.insertNewNote(title, description);
    }

    @Entao("^eu vejo a listagem de notas com a nota \"([^\"]*)\"$")
    public void euVejoAListagemDeNotasComANota(String arg1)  {
        this.notes.NoteValidate();
    }

    @Dado("^que exista uma nota com o titulo \"([^\"]*)\" e descricao \"([^\"]*)\"$")
    public void queExistaUmaNota(String title, String description) {
        this.notes.insertNewNote(title, description);
    }

    @Quando("^eu clico na nota existente$")
    public void euClicoNaNotaExistente()  {
        this.notes.selectExistingNote();

    }

    @Entao("^eu vejo a imagem do android$")
    public void euVejoImagemDoAndroid()  {
        this.notes.imageValidation();

    }
}