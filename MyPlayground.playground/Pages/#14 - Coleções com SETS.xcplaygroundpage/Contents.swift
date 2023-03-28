import UIKit

//set parecido com array, porém somente dados unicos, sem repeticao

var newDict: [String:Int] = [:]
var newArray: [String] = []

var newSet: Set<Int> = []
newSet.insert(10)
newSet.insert(3)
newSet.insert(10)

print(newSet)

let response = newSet.insert(4)
print(response)
print(newSet)


print(newSet.contains(4))

//let removed = newSet.remove(4)
//print(newSet)
//print(removed)

if let removed = newSet.remove(4){
    print(newSet)
    print(removed)
}

newSet.removeAll()
print(newSet)

// bom para evitar duplicar informacoes. ex.: app que faz agendamento de reuniao..
// set para nao fazer agendamento de mais de uma reuniao no mesmo dia/horario
