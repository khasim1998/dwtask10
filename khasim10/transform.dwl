%dw 2.0
output application/json
var cities1 = ["chennai", "delhi", "pune", "Indore"]
var cities2 = ["Bangalore", "pune", "Indore", "chennai", "Hyderbad"]
---
(cities1 reduce ((item, accumulator=[]) -> if(cities2 contains(item)) accumulator else accumulator + item )) ++
(cities2 reduce ((item, accumulator=[]) -> if(cities1 contains(item)) accumulator else accumulator + item ))