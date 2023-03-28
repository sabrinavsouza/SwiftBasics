
func discount(productId: Int) -> Double {
    switch(productId) {
    case 1:
        return 0.2
    case 2:
        return 0.4
    default:
        return 0.0
    }
}

let d = discount(productId: 2)
print("Desconto: \(Int(d * 100))%")

func printProduct(name: String) {
    var message: String = ""
    switch(name) {
    case "iPhone", "iPad": //pode usar mais de uma condicao, separando por virgula
        message = "Produto usando o S.O. iOS."
        break // quando n usamos o return
    case "Motorola":
        message = "Produto usando o S.O. Android."
        break
    default:
        message = "Produto não encontrado."
        break
        
    }
    print(message)
    
    //Switch case, semelhante ao if else
//    if name == "iPhone" || name = "iPad" {
//        //bloco de código
//    } else if name = "Motorola"{
//        //bloco de código
//    } else {
//        //default
//    }
}
printProduct(name: "iPad")
