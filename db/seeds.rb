Book.destroy_all
Reviewer.destroy_all


Book.create! [
	{name: "Señor de los anillos", author: "Elmo Jones"},
	{name: "Hayy Potter", author: "JKRolling"},
	{name: "100 ladrones", author: "Orpis"},
	{name: "Amigos Todos", author: "Palma"},
	{name: "Me pongo de pie", author: "Carcuro"},
	{name: "De Pe a Pa", author: "Carcuro"},
	{name: "Casco de Soldar", author: "Palma"},
	{name: "GOT", author: "GOT owner"}
]

100.times { |index| Book.create! name: "Book#{index}", author: "Author#{index}"}

señor = Book.find_by name: "Señor de los anillos"
señor.notes.create! [
	{title: "Wow", note: "Grat book to learn Ruby" },
	{title: "Funny", note: "Doesn't put you to sleep" }
]

reviewers = Reviewer.create! [
	{name: "Joe", password: "abc123"},
	{name: "Jim", password: "123abc"}
]

Book.all.each do |book|
	book.reviewer = reviewers.sample
	book.save!
end	