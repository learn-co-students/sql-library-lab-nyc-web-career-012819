def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title AS title, books.year AS year
  FROM books JOIN series
  ON books.series_id = series.id
  WHERE books.series_id = 1
  ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name AS name, characters.motto AS motto
  FROM characters
  ORDER BY motto limit 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species AS species, COUNT(characters.species) AS species_count
  FROM characters
  GROUP BY species
  HAVING species_count
  ORDER BY species_count DESC Limit 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON authors.id = series.author_id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN characters
  ON series.id = characters.series_id
  WHERE characters.species = \"human\"
  GROUP BY series.title
  HAVING COUNT(characters.species) LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(character_books.book_id) AS character_count
  FROM characters JOIN character_books
  ON characters.id = character_books.character_id
  GROUP BY characters.name 
  ORDER BY character_count DESC"
end
