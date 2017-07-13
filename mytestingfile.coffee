[1..4].map (i) -> console.log "Happy Birthday " + (if i is 3 then "dear Robert" else "to You")
console.log "Happy Birthday #{if i is 3 then "dear Robert" else "to You"}" for i in [1..4]

(if score > 60 then (passed or passed = []) else (failed or failed = [])).push score for score in [49, 58, 76, 82, 88, 90]
[passed, failed] = [49, 58, 76, 82, 88, 90].reduce ((p,c,i) -> p[+(c < 60)].push c; p), [[],[]]

request.get { uri:'path/to/api.json', json: true }, (err, r, body) -> results = body

Math.max.apply @, [14, 35, -7, 46, 98] # 98
Math.min.apply @, [14, 35, -7, 46, 98] # -7

sieve = (num) ->
    numbers = [2..num]
    while ((pos = numbers[0]) * pos) <= num
        delete numbers[i] for n, i in numbers by pos
        numbers.shift()
    numbers.indexOf(num) > -1

primes = []
primes.push i for i in [2..100] when not (j for j in primes when i % j == 0).length

(n) -> (p.push i for i in [2..n] when not (j for j in (p or p=[]) when i%j == 0)[0]) and n in p

(n) -> (p.push i for i in [2..n] when !(p or p=[]).some((j) -> i%j is 0)) and n in p

"#{if i%3 is 0 then 'fizz' else ''}#{if i%5 is 0 then 'buzz' else ''}" or i for i in [1..100]

['fizz' unless i%3] + ['buzz' unless i%5] or i for i in [1..100]
