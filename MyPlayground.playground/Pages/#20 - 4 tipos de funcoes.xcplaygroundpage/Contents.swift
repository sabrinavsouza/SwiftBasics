// 1. forma tradicional
func getFullName(firstName: String, lastName: String) -> String {
    return firstName + " " + lastName
}

let fullName = getFullName(firstName: "Sabrina", lastName: "Souza")
print(fullName)


// 2. funcao com valor padrao
func getFullName2(firstName: String, lastName: String = "Desconhecido") -> String {
    return firstName + " " + lastName
}

let fullName2 = getFullName2(firstName: "Sabrina")
print(fullName2)


// 3. nao definir o nome do argumento _
func getFullName3(_ firstName: String, _ lastName: String) -> String {
    return firstName + " " + lastName
}

let fullName3 = getFullName3("Sabrina", "Souza")
print(fullName3)


// 4. declarar nomes diferentes para argumentos vs parametros
func getFullName4(name firstName: String, _ lastName: String) -> String {
    return firstName + " " + lastName
}

let fullName4 = getFullName4(name: "Sabrina", "Souza")
print(fullName4)

//s
func soma(numeo01 x: Int, numero2 y: Int) -> Int {
    return x + y
}
let total = soma(numeo01: 4, numero2: 5)
print(total)
