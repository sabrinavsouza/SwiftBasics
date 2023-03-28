import UIKit

// loop FOR

// sequências (ranges)

let range = 0...5 // inclusive
let r = 0..<5 // exclusive

var limit = 5
let rg = 0..<limit

// for é controlado pelo range

var sum = 0
let count = 10

for i in 1...count { // i é uma variavel imutavel (como o let)
    sum += i
}
print(sum)

// ignorar o index
for _ in 1...count where count > 50 { // somente se count for maior que 50
    print("oi")
}

5 % 2 // modulo é o resto da divisão
6 % 2

for i in 0...count where i % 2 == 0 { // for precisa do range para funcionar, diferente do while
    print("indice é: \(i)")
}

for i in 0..<5 {
    print("index é: \(i)")
}
