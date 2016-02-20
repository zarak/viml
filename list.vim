let animalKingdom = ['Crocodile', 'Lizard', 'Bug', 'Squid']
echo animalKingdom

call add(animalKingdom, 'Penguin')
echo animalKingdom

call remove(animalKingdom, 3)
call insert(animalKingdom, 'Octopus', 3)
echo animalKingdom[3]

echo animalKingdom

echo sort(animalKingdom)
echo animalKingdom

echo sort(copy(animalKingdom))
echo animalKingdom

let animalKingdom = ['Frog', 'Rat', 'Crocodile', 'Lizard', 'Bug', 'Octopus', \ 'Penguin']
let forest = animalKingdom[0:2]

echo forest

let forest = animalKingdom[:2]

echo animalKingdom[2:-1]
