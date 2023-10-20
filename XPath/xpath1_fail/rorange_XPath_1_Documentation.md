# Remington Orange - XPath Exercise 1 - Documentation

## Prenote

I couldn't get the file to do any XPath until changing all of the '&'s to 'and'.

## Section 1

1A) `//div` gives 9 results.

1B) `//listPerson` gives 6 results.

1C) `//div[listPerson]` gives 4 results.

1D) `//div[listPlace]` gives 1 result.

1E) `//listPlace/place` gives 204 results.

1F) `//place/placeName` gives you 263 results, and `//place//placeName` gives you 400 results. It seems to get all of the descendant `<placeName>` elements under any `<place>` tag.

## Section 2

2A) `//div/*` will give you the children (19 results).

2B) `//list[@sortKey='animals']/*` this gives 29 results.

2C) `//*[@sortKey]` with 19 results.

## Section 3

3A) `//person` gives 1223 results.

3B) `//person[@sex]` gives 1107 results.

3C) `count(//person[@sex])` 1107 results.

3D) `(count(//person[@sex]) div count(//person)) * 100` will give you 90.5151 or 90% with sex attribute.

3E) `count(//person[@sex="f"])` gives 327 results.

3F) `(count(//person[@sex="f"]) div count(//person[@sex])) * 100` will give you 29.539 or 29% female.







