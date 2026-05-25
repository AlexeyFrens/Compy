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
                Button(action: {
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
                Button(action: {
                    if index >= barra.pecas.count - 1{
                        index = 0
                    }
                    index += 1
                    print(barra.pecas[index])
                }){
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .frame(width: 50,height: 50)
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
            .glassEffect()
            
        }
        .background(Image(.mesa))
    }
}

#Preview {
    ParameterBarView(barra: ParameterBarViewModel())
}
