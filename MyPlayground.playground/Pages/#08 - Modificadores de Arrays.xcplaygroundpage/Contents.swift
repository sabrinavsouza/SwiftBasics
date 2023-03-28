import UIKit

// Modificadores de Arrays

//let userNames = ["Sabrina", "Willian", "Ana"] //precisa ser do mesmo tipo
var userNames: [String] = [] //permite alterar durante o código
var userNames1: [String] = []

userNames.append("Filipe")

userNames += ["Steve", "Elon"] //manipulação de dados
userNames1 += ["Filipe","Steve", "Elon"]

//let name = userNames[0]

//fatiar(slice) uma array em outros elementos
let firstThree = userNames[1...2] //range
//firstThree[0] -> erro pois n esta dentro do range
firstThree[1]

let firstThree1 = Array(userNames1[1...2])//criando um novo array apartir de outro
firstThree1[0]

//adicionar elementos
userNames.append("novo registro")

//remover todos os elementos
//userNames.removeAll()

//funções de condições do arrays

userNames.isEmpty //verifica lista vazia
userNames.count // verifica tamanho da lista

userNames.contains("Filipe")//verificar se a lista contém algum elemento como equals

// acessar o primeiro elemento da lista
// userNames.first -> se a lista estiver vazia ele retorna um nill

if let first = userNames.first {
    print(first)
}


// inserir no index X
userNames.insert("Sabrina", at: 0)


// remover no index X
//userNames.remove(at: 4)
let removed = userNames.remove(at: 1)
userNames

let removedLast = userNames.removeLast()
userNames
userNames.count

// trocar oir slice (fatia)
userNames[0...1] = ["Novo1" , "Novo2" , "Novo3"]
userNames

// trocar por indice
userNames.swapAt(0, 1)
userNames.count

//var n=5
//var lista : [Int] = []
//for i in 1...5{
//      print(i)
//    lista.append(i)
//    }
//  lista.reverse()
//    print(lista)
