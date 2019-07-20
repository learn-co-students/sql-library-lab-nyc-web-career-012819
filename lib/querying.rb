











def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books JOIN series ON series.id = books.series_id WHERE series.id = 1 ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY characters.motto LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY species ORDER BY COUNT(characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name FROM series JOIN authors ON authors.id = series.author_id JOIN subgenres ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "select series.title from characters JOIN series ON characters.series_id = series.id WHERE characters.species = 'human' GROUP BY series.title LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  # "select characters.name, COUNT(books.title) from characters JOIN books ON character_books.book_id = books.id join character_books on character_books.character_id = characters.id group by characters.name ORDER by COUNT(books.title) desc;"
  "select characters.name, count(books.id)
  from books
  join characters on character_books.character_id = characters.id
  join character_books on books.id = character_books.book_id
  group by characters.name
  order by count(books.id) desc;"
end
