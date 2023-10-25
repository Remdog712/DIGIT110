# Remington Orange - XPath 3
## Section 1
a.) `//div/count(*)`  returns  20 results and uses the `count(*)` function to count the number of child elements of the divs. Without `count(*)` you get the children of each div but not how many.

b.) `//div/*/count(*)` returns 20 results and counts how many children there are under each type of div, `//div/*/*` returns 3223 results. This is showing each children of divs children I believe

## Section 2
a.) `max(//div/*/count(*))
` returns 1071 as the max

b.) `min(//div/*/count(*))
` returns only 3 results for the minimum


## Section 3
a.) This awkwardly long expression `//div[*[count(*) = max(//div/*/count(*))]]
` gives you `type="historical_people` returned as the list that matches the max found though I'm not sure if this is even the correct way to do it but I got a result. This took a lot of Googling

## Section 4
a.) `distinct-values(//occupation/@type)
`

b.)`count(distinct-values(//occupation/@type))
` will give you 15 results

## Section 5
a.) `//occupation[@type='artist']`

b.) `//person[occupation[@type='artist']]`

c.) `//person[@sex='f' and occupation[@type='artist']]` 

d.) `//person[occupation[@subtype='engraver']] ` There are 18 engravers

e.) Using `//person[occupation[@subtype='engraver'] and birth/@when='1787']` We get "William Finden" for an engraver born in 1787 

f.) `//person[occupation[@subtype='engraver']]/birth/@when` returns the birthdates of 17 engravers

g.) This took a while to figure out but: `let $birthDates := //person[occupation[@subtype='engraver']]/birth/@when ! string(.)
return min(sort($birthDates))` will give you January 12th 1667 for the earliest year

## Section 6
a.) `//*[name()]` Gives you a crazy number of 40,784

b.) Even with distinct values: `count(distinct-values(//*[name()]))` Gives you 20,798 names.