import UIKit

//DICT vs ARRAYS

//arrays sao acessados por indices, e os indices geralmente sao numeros inteiros
//sao sequenciais

//DICT tambem é uma colecao mas no sentido key - value
//key = Strings, Int, {OUTRO OBJETO}
//estruturas desordenadas

/*
var products: [String : Int] = [:]

products ["Apple"] = 5
products ["Google"] = 16

print(products)
*/

var products: [Int : String] = [
    1 : "Fone de ouvido",
    2 : "Macbook",
    3 : "Impressora",
    4 : "Iphone",
]
print(products)

print(products[12] ?? "Nenhum valor encontrado para a chave 12")

// para atualizar um dictionary
products[2] = "MacMini"
print(products[2])

// para contar elementos no dictionary
print(products.isEmpty)
print(products.count)

// para remover elementos
products[2] = nil
print(products)

// buscar todas as chaves
for key in products.keys {
    print(key)
}

// buscar todos os valores
for val in products.values {
    print(val)
}

//dictionary não tem ordem para prit (desordenado)

for (key, value) in products {
    print("Chave: \(key), valor: \(value)")
}
