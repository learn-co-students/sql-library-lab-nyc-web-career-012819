def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
    FROM books
    ORDER BY books.year
    LIMIT 3;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto
    FROM characters
    ORDER BY characters.motto
    LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species)
    FROM characters
    GROUP BY characters.species
    ORDER BY characters.species DESC
    LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name
from authors
JOIN series ON authors.id = series.author_id  JOIN subgenres ON subgenres.id = subgenre_id
;"
end

def select_series_title_with_most_human_characters
  "select series.title
  FROM characters
  JOIN series ON characters.series_id = series.id
  GROUP BY title
  LIMIT 1
;"
end

def select_character_names_and_number_of_books_they_are_in
  "select  characters.name, COUNT(characters.name), books.title
  from characters
  left join character_books ON character_books.character_id = characters.id LEFT JOIN books ON books.id = character_books.book_id
 GROUP BY title;
"
end
