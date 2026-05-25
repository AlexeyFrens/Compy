//
//  ParameterBarView.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//
import SwiftUI
struct ParameterBarView: View{
   @StateObject var barra : ParameterBarViewModel
    @State var index = 0
    var body: some   View{
        ZStack{
            HStack{
                //Botão para mudar o índice das peças
                Button(action: {
                    //Se o índice for menor ou igual a 0 retorna para 0 -- Não quebra o texto se sair do índice.
                    if index <= 0{
                        index = 0
                    }else{
                        index -= 1
                    }
                    
                    print(barra.pecas[index])
                }){
                    Image(systemName: "arrow.left.circle")
                        .resizable()
                        .frame(width: 50,height: 50)
                }
                
                Text( barra.pecas[index].pieceName)
                
                //Botão que altera o indíce das peças pra cima, existe  uma validação confirmando que quando chegar ao final do array o índice retorna para 0
                Button(action: {
                    if index >= barra.pecas.count - 1{
                        index = 0
                    }else{
                        index += 1
                    }
                    print(barra.pecas[index])
                }){
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .frame(width: 50,height: 50)
                }
                //Se o componente possui mais de uma especificação, renderiza o dropdown na tela
                if barra.pecas[index].dropDown.count > 1{
                 
                }
                Button(action: {
                    barra.decrementar(pecaIndex: index, SpecIndex: 0)
                    
                }){
                    Image(systemName: "minus.square.fill")
                        .resizable()
                        .frame(width: 50,height: 50)
                }
                Text("\(barra.pecas[index].dropDown[0].quantity)")
                Text(barra.pecas[index].dropDown[0].name)
                Button(action: {
                    barra.incrementar(pecaIndex: index, SpecIndex: 0)
                }){
                    Image(systemName: "plus.square.fill")
                        .resizable()
                        .frame(width: 50,height: 50)
                }
                
            }
            
            .padding()
            
            .background(.ultraThinMaterial)
            .background(.fundoAlteradorParametros)
            
            
            .clipShape(RoundedRectangle(cornerRadius: 12))
//            .glassEffect()
        }.background(Image(.mesa))

    }
}

#Preview {
    ParameterBarView(barra: ParameterBarViewModel())
}
