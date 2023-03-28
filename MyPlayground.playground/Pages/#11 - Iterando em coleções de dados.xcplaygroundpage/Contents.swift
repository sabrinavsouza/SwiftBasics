import UIKit

let dollars = [5.1, 5.2, 4.9, 5.32, 5.43, 5.11]
let days = ["01/02" , "02/02", "03/02", "04,02", "05/02", "06/02"]

for i in 0..<dollars.count where dollars[i] < 5.0 { //até o valor anterior a contagem do index, a contagem de itens dentro dessa lista e adicionou uma condição where
    print("dolar \(dollars[i]), dia: \(days[i])") //listas precisam estar do mesmo tamanho para funcionar desta forma
}

// i in 0..<dollars.count

for day in days {
    print(day)
}



