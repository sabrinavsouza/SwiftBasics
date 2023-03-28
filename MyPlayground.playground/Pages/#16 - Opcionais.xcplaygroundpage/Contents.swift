////optional pode ter um valor nulo ou nao
////branco é diferente de nulo
//
//var username: String? = "Tiago" // variavel pode ser atribuida a nulo, mas na hora de que for acessar ela, tem que tratar essa variavel, pq pode ser que tenha nulo dentro dela.

//username = nil

//// só encontraria o erro na hora da execucao | producao
//let num = username.count
//print(num)

var username: String? = "Sabrina"
//username = nil

if let username = username {
    let chars = username.count
    print("Quantidade de caracteres: \(chars)")
} else {
    print("O valor do nome esta nulo, logo imprimir uma mensagem para o usuario")
}

if let chars = username?.count { //maneira mais enxuta
    print("Quantidade de caracteres: \(chars)")
} else {
    print("O valor do nome esta nulo, logo imprimir uma mensagem para o usuario")
}

//só pode declar nulo, se declar um opcional
// precisamos de valores nulos quando n queremos especificar valores (pega o valor padrao)

                            //optional dizendo que pode rececer nulo
func megaSenaGenerator(total: Int?, maxNumber: Int?) -> Set<Int> {
    var numbers = total ?? 6 //passando o valor caso entre nulo
    var result: Set<Int> = []

    while(numbers > 0) { //if let -> tenta atribuir nessa variavel o valor que esta envelopado nesse opcional, se voce conseguir, executa oq esta aqui dentro
        if let max = maxNumber { //só entra nesse bloco de código se realmente o maxNumber tiver um numero, se tiver
            let generated = Int.random(in: 1...max)
            let res = result.insert(generated)
            
            if (res.inserted) { //essa faz um boolean
                numbers = numbers - 1
            }
        } else{
            break
        }
    }
    return result
}

//1. Optionals (consegue especificar valores padroes (defaults))
var maxNumber: Int?
//maxNumber = 60
maxNumber = nil //retorna a lista vazia

//print(maxNumber)
//print(maxNumber!) //descompactar valor.. retirar ele da "caixa"

let res1 = megaSenaGenerator(total: nil, maxNumber: maxNumber)
print(res1)

//2. force-unwrap | RETIRAR o valor de dentro do optional (!) PERIGOSO

//3. garantir com uma condicao se realmete tem o valor dentro do opcional (if let)


// outro exemplo
// opcional quando tu nao tem obrigacao de preencher com valor

var userName: String? = nil
var phone: String? = nil
var password: String = "12341234"

func login(userName: String?, phone: String?, password: String) {
    if let phone = phone {
        print("Fazer login via telefone: \(phone)")
    } else if let userName = userName {
        print("Fazer login via username: \(userName)")
    } else {
        print("Error! Informe o telefone ou o nome de usuario.")
    }
}

login(userName: userName, phone: phone, password: password)

// Resumindo

//1. poder ter valor padrao

var name: String? = "Sabrina Souza"
//name = nil
let ch = name?.count ?? 0
//print(ch)
 
//2. descompactar - force
//let ch2 = name!.count
//print(ch2) //se passar um valor nil na variavel, ele da crash (trava) pq vai tentar descompactar algo que nao existe.

//3. descompactar - seguro
if let ch3 = name?.count {
    //print("O nome \(name) possui \(ch3) caracters")
    print(ch3)
} else {
    print("Valor nul")
}
