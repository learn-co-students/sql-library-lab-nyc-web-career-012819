UPDATE characters set species = "Martian"
WHERE id = (SELECT MAX(id) FROM characters);
