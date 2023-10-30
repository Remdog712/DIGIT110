# Remington Orange - Project XPath

## Prenote
* We haven't fully encoded a page yet but we have started on Page 3 for testing purposes so that's we'll be working off. We used Mafalda as our baseline.

### Xpath 1 - Find all Dennis when he is mentioned in the panel as one of the characters
* `//cbml:panel[contains(@characters, 'dennis')]` Found 3 `dennis`'s throughtout what we've encoded so far.

### Xpath 2 - In Panel 2, find the balloon in which Dennis speaks (as opposed to his father)
* `//cbml:panel[@n='2']//cbml:balloon[@who='#dennis'] ` This captured the line correct line. Although I was super specific in what I wanted so I knew exactly result I was looking for.

### Xpath 3 - In Panel 1, count the characters (as in letters) of the caption
* `string-length(normalize-space(//cbml:panel[@n='1']/cbml:caption))` This worked and gave 12 for SLEIGH-MATES ( I used normalize-space to clean up and extra spaces if there were any)


## XSLT Comment
* I have no questions about XSLT at this time, I remember some of the concepts from DIGIT210 and I was able to create an XSLT. I do remember how frustrating it can be so I am bracing
