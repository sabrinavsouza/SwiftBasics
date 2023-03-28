func sum(x: Int, y: Int) -> Int {
    return x + y
}

func divide(x: Int, y: Int) -> Int {
    return x/y
}

// +, - , / , * , raiz
func calculo(a: Int, b: Int, operacao: (Int, Int) -> Int) {
    print("a: \(a)")
    print("b: \(b)")
    let result = operacao(a, b)
    print("Resultado: \(result)")
    
}
calculo(a: 5, b: 5, operacao: sum(x:y:))
calculo(a: 10, b: 2, operacao: divide(x:y:))

//forma enxuta
calculo(a: 6, b: 4, operacao: {a, b in
    a - b
})

//ainda mais inxuto
calculo(a: 8, b: 8, operacao: {a, b in
    a * b
})

// =========================

func callServer(url: String, callback: (Int) -> () ) {
    //aqui dentro a gente chama o servisor e ele demora (latencia)
    let code = 200 // < - Ela demora!
    callback(code)
}

callServer(url: "https://meusite.com") { code in
    if code == 200 {
        print("Chamada com sucesso no servidor, mostrar a proxima tela.")
    } else {
        print("Ops! deu um erro no servidor.")
    }
}
