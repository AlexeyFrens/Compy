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
    
    var body: some View{
        let safeIndex = (barra.index < barra.pecas[index].dropDown.count) ? barra.index : 0
        HStack{
            //Botão para mudar o índice das peças
            Button(action: {
                //Se o índice for menor ou igual a 0 retorna para 0 -- Não quebra o texto se sair do índice.
                barra.index = 0
                if index <= 0{
                    index = 0
                }else{
                    index -= 1
                    print(safeIndex)
                }
               
                print(barra.pecas[index])
                print(index)
            }){
                Image(systemName: "arrow.left.circle")
                    .resizable()
                    .frame(width: 50,height: 50)
            }
            //----------------------------------------------------------
            Text( barra.pecas[index].pieceName)
            
            //Botão que altera o indíce das peças pra cima, existe  uma validação confirmando que quando chegar ao final do array o índice retorna para 0
            Button(action: {
                barra.index = 0
                if index >= barra.pecas.count - 1{
                    index = 0
                }else{
                    index += 1
                    print(safeIndex)
                }
                barra.index = 0
                print(barra.pecas[index])
                print(index)
            })
            {
                Image(systemName: "arrow.right.circle")
                    .resizable()
                    .frame(width: 50,height: 50)
            }
            //----------------------------------------------------------
            //Se o componente possui mais de uma especificação, renderiza o dropdown na tela
            if barra.pecas[index].dropDown.count > 1{
                DropDown(barra: barra,isActive: false,index: $index)
            }
            //----------------------------------------------------------
            //Botão que decrementa a quantidade do parametro especificado
            Button(action: {
                barra.decrementar(pecaIndex: index, SpecIndex: safeIndex)
                print(barra.pecas[index].dropDown[safeIndex].quantity)
            }){
                Image(systemName: "minus.square.fill")
                    .resizable()
                    .frame(width: 50,height: 50)
            }
            //----------------------------------------------------------
            
            //Texto mostrando a quantidade
            Text("\(barra.pecas[index].dropDown[safeIndex].quantity)")
            //----------------------------------------------------------
            //Texto mostrando o nome específico de cada quantidade
            Text(barra.pecas[index].dropDown[barra.index].un)
            //----------------------------------------------------------
            //Botão que incrementa o parametro de cada especificação
            Button(action: {
                barra.incrementar(pecaIndex: index, SpecIndex: safeIndex)
                print(barra.pecas[index].dropDown[safeIndex].quantity)
            }){
                Image(systemName: "plus.square.fill")
                    .resizable()
                    .frame(width: 50,height: 50)
            }
            //----------------------------------------------------------
        }
        .padding()
        
        .background(.ultraThinMaterial)
        .background(.fundoAlteradorParametros)
        
        
        .clipShape(RoundedRectangle(cornerRadius: 12))
        //            .glassEffect()
    }
}
        
#Preview {
    ParameterBarView(barra: ParameterBarViewModel())
}
