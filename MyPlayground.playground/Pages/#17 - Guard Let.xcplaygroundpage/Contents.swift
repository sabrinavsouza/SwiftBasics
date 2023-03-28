

func buscaProdutoId(id: Int) -> String {
    // aqui seria o banco
    //
    let dic = [
        1: "iPhone",
        2: "Macbook",
        3: "iPad"
    ]
    
    var username: String? = nil
    var password: String? = nil
    
    //    let product = dic[id]
    //    print(product) //print optional
    //
    //    return product! //força o descompactamento
    
    
    //if let para nao dar crash quando colocar um numero que nao contem no dic
    //primeiro verifica o sicesso, se der sucesso, retorna, senao, retorna o erro
    
//    if let product = dic[id] {
//        return product
//    } else { // nao precisa trabalhar necessariamente com else, pois como acima existe um return, se ele n encontrar ele cai p proximo return
//        return "Nenhum produto encontrado."
//    }
//
    
    //guard let -> como o if else, mas mais limpo
    //primeiro trata o erro/excecao e depois o sucesso
    //como uma segurança em opcionais
    guard let product = dic[id],
          let username = username, //outras opcoes, pode por mais de uma variavel no guard let
          let password = password else { return "Nenhum produto encontrado."}
    return product
    
    
}
print(buscaProdutoId(id: 10))

 
