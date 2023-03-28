import UIKit

// primeiro arquivo

// programacao sem funcao
var numbers = 6 // HARD CODE -> codigos cravados, n é flexivel
var result: Set<Int> = []

while(numbers > 0) {
    let generated = Int.random(in: 1...60) // gera numeros aleatorios de 1 ao 60
    let res = result.insert(generated) //colecao de dados sem repeticao
    
    if (res.inserted) { //esa faz um boolean
        numbers = numbers - 1
        print(result)
    }
}


// segundo arquivo

//funcoes -> Blocos de códigos que podemos reutilizar em outras partes do projeto

func megaSenaGenerator(){
    var numbers = 6
    var result: Set<Int> = []

    while(numbers > 0) {
        let generated = Int.random(in: 1...60) // gera numeros aleatorios de 1 ao 60
        let res = result.insert(generated) //colecao de dados sem repeticao
        
        if (res.inserted) { //esa faz um boolean
            numbers = numbers - 1
            print(result)
        }
    }
}

print("Exemplo 2 ----------------")
// no arquivo xyz
megaSenaGenerator()

// no arquivo abc
megaSenaGenerator()


//funcoes podem receber parametros

func megaSenaGenerator2(total: Int){
    var numbers = total //valores dinamicos
    var result: Set<Int> = []

    while(numbers > 0) {
        let generated = Int.random(in: 1...60) // gera numeros aleatorios de 1 ao 60
        let res = result.insert(generated) //colecao de dados sem repeticao
        
        if (res.inserted) { //esa faz um boolean
            numbers = numbers - 1
            print(result)
        }
    }
}
print("Exemplo 3 ----------------")
// no arquivo xyz
megaSenaGenerator2(total: 6)

// no arquivo abc
megaSenaGenerator2(total: 15)

print("------------")
                        // se chama parametro
func megaSenaGenerator3(total: Int, maxNumber: Int){
    var numbers = total
    var result: Set<Int> = []

    while(numbers > 0) {
        let generated = Int.random(in: 1...maxNumber) // gera numeros aleatorios de 1 ao 60
        let res = result.insert(generated) //colecao de dados sem repeticao
        
        if (res.inserted) { //essa faz um boolean
            numbers = numbers - 1
            print(result)
        }
    }
}
print("Exemplo 4 ----------------")
// no arquivo xyz
                    // se chama argumento
megaSenaGenerator3(total: 6, maxNumber: 60)

// no arquivo abc
megaSenaGenerator3(total: 15, maxNumber: 50)


func megaSenaGenerator4(total: Int, maxNumber: Int) -> Set<Int> {
    var numbers = total
    var result: Set<Int> = []

    while(numbers > 0) {
        let generated = Int.random(in: 1...maxNumber) // gera numeros aleatorios de 1 ao 60
        let res = result.insert(generated) //colecao de dados sem repeticao
        
        if (res.inserted) { //esa faz um boolean
            numbers = numbers - 1
        }
    }
    return result
}

print("Exemplo 5 ----------------")
// no arquivo xyz
                    // se chama argumento
let res1 = megaSenaGenerator4(total: 6, maxNumber: 60)
print(res1)

// no arquivo abc
let res2 = megaSenaGenerator4(total: 15, maxNumber: 50)
print(res2) //para trabalhar com esse resultado no decorrer do projeto.. exemplo, um if e else 
