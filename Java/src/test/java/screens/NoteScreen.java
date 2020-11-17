package screens;

import io.appium.java_client.MobileElement;
import io.appium.java_client.pagefactory.AndroidFindBy;
import io.appium.java_client.pagefactory.WithTimeout;
import screens.base.BaseScreen;

import java.util.concurrent.TimeUnit;

public class NoteScreen extends BaseScreen {

    @WithTimeout(time = 30000, unit = TimeUnit.SECONDS)
    @AndroidFindBy(id = "fab_add_notes")
    private MobileElement btnnote;
    @AndroidFindBy(id = "add_note_title")
    private MobileElement title;
    @AndroidFindBy(id = "add_note_description")
    private MobileElement description;


    @AndroidFindBy(id = "note_detail_title")
    private MobileElement noteCard;

    @AndroidFindBy(id = "note_detail_image")
    private MobileElement image;

    public void validateScreenHome() {

        this.btnnote.isDisplayed();

    }

    public void insertNewNote(String titleName, String descriptionName) {

        this.validateScreenHome();
        this.btnnote.click();
        this.title.isDisplayed();
        this.title.sendKeys(titleName);
        this.description.sendKeys(descriptionName);
        this.btnnote.click();
    }

    public void selectExistingNote() {

        this.noteCard.click();

    }

    public void NoteValidate() {

        this.noteCard.isDisplayed();

    }

    public void imageValidation() {

        this.image.isDisplayed();

    }
}
