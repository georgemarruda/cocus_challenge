class HomeScreen
  def title(text)
    find_elements(:xpath, "android.widget.TextView").text(text)
  end

  def get_android_image
    id("note_detail_image")
  end

  def insert_notes(title, description)
    new_note = "fab_add_notes"
    add_title = "add_note_title"
    add_description = "add_note_description"

    id(new_note).click
    id(add_title).send_keys(title)
    id(add_description).send_keys(description)
    id(new_note).click
  end

  def compare_message(text)
    find_elements(:xpath, "android.widget.FrameLayout").text(text)
  end
end
