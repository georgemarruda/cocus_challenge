Dado("que eu esteja na tela inicial do notes") do
  expect((@screen.home.title("Notes")).displayed?).to be true
end

Quando("eu insiro uma nota com o título {string} e descrição {string}") do |titulo, desc|
  @screen.home.insert_notes(titulo, desc)
end

Então("eu vejo a listagem de notas com a nota {string}") do |message|
  expect((@screen.home.compare_message(message)).displayed?).to be true
end

Dado("que exista uma nota {string}") do |message|
  @screen.home.insert_notes(message, message)
end

Quando("eu clico na nota {string}") do |message|
  (@screen.home.compare_message(message)).click
end

Então("eu vejo a imagem do android") do
  expect((@screen.home.get_android_image).displayed?).to be true
end
