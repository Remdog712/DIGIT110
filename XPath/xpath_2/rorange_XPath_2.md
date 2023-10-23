# Remington Orange - XPath Exercise 2

## Digit 110

### Section 1

1.) `//div[@type='historical_people']`

### Section 2

2b.) `//div[@type='historical_people']/*`  returned (sortKey="histOrgs") and (sortKey="hisitPersons")

2c.) `//div[@type='Mitford_Team']/*`  returned (sortKey="Mitford_Team") and (sortKey="archives")

2c.) `count(//div/*)` returned 20 Results

### Section 3

3a.) `//list[@sortKey='animals']/*` Returns 67 results and `count(//list[@sortKey='animals']/*)` returns 67 results

3b.) `//list[@sortKey='animals']/*[last()] ` returns: (xml:id="wren_crested")

3c.) `//list[@sortKey='plants']/*[position()=5]` returns: (xml:id="apple_tree")

3d.) `//list[@sortKey='plants']/*[position() <= 6]` returns: (acacia, aconite, alder, anemone, apple_tree, apricot_tree)

### Section 4

4.) ` //person/occupation[1]` seems to apply to every person element while `(//person/occupation)[1]` only applies to the occupation element

### Section 5

5a.) `count(//person) ` returns: 1503 `person` elements

5b.) No, not all have the `sex` attribute: `//person[@sex]  ` only yields 1378 elements

5c.) `count(//person[@sex]) div count(//person)` returns: 0.9168; then  `(count(//person[@sex]) div count(//person)) * 100
` returns: 91.683, therefore about 91% of the `person` elements have the `sex` attribute


5d.) `count(//person[@sex='f'])` yields: 409; then `(count(//person[@sex='f']) div count(//person[@sex])) * 100
` yields: 29.68 therefore 29% of the `person` elements with the `sex` attribute are female
