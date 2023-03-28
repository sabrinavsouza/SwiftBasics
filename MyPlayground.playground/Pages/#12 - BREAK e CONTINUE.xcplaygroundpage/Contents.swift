import UIKit

let dollars = [5.1, 5.2, 4.9, 5.32, 5.43, 5.11]
let days = ["01/02" , "02/02", "03/02", "04,02", "05/02", "06/02"]

//break
print("intrução break:")
for i in 0..<dollars.count {
    if days[i] == "03/02"{
        break //quebra um looping. ex: tenho uma lista de 30 elementos, mas quero imprimir só os 5 primeiros
    }
    print("dolar \(dollars[i]), dia: \(days[i])")
}
print("\nintrução continue:")
// continue
for i in 0..<dollars.count {
    if days[i] == "03/02"{
        continue
    }
    print("dolar \(dollars[i]), dia: \(days[i])")
}
