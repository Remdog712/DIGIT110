# Remington Orange XPath Exercise 4

## Section 1
a.) `distinct-values(//cbml:panel/@characters)` No it seeing certain characters as double because character ids

## Section 2
a.) `//cbml:panel/@characters` -> `//cbml:panel/@characters!` -> `//cbml:panel/@characters!tokenize(.)` -> Finally `distinct-values(//cbml:panel/@characters!tokenize(.) )` Cool stuff. I like clean lists!



## Section 3
a.) `//cbml:panel[contains(@characters, 'drkelly')]` Gives me 5 results


b.) `//cbml:caption[contains(@type, 'flashback')] ` I guess only 4 flashbacks

## Section 4
a.) `//cbml:balloon!string-length(.)` Capturing Lengths; `max(//cbml:balloon!string-length(.))` returns 215 as the longest balloon.


b.) `//cbml:balloon[string-length(.) = max(//cbml:balloon/string-length(.))]/@who ` I found that Kaliman gives the longest speech if I'm correct

c.)`//cbml:balloon[@type="speech"][string-length(.) = min(//cbml:balloon[@type="speech"]/string-length(.))]/@who ` Also Kaliman but just to make sure, I looked to see what the shortest speech was 38 after using `max(//cbml:balloon!string-length(.))` which doesn't seem right

## Section 5

a.) I found the skull with `//cbml:panel[.//note[contains(., 'skull')]] ` by changing the elements found in 5b

b.) `//div[//cbml:balloon[contains(., 'NO')]]` returns 20 results while `//div[.//cbml:balloon[contains(., 'NO')]]` returns only 10. I beieve this is because the dot is narrowing down the divs while without the dot, it's grabbing every div element regardless