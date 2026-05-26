//
//  SpecificationViewModel.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//

import Foundation
internal import Combine
import SwiftUI

class ParameterBarViewModel : ObservableObject{
    @Published var index = 0
    @Published var pecas: [ParameterBarModel] = [
        ParameterBarModel(pieceName: "Processador", dropDown:
                            [
                                SpecificationModel(name: "Frequência", quantity: 0, un:"MHz"),
                                SpecificationModel(name: "Núcleos", quantity: 0, un:"")
                            ]
                         ),
        ParameterBarModel(pieceName: "Placa de Vídeo", dropDown:
                            [
                                SpecificationModel(name: "Núcleos", quantity: 0, un:""),
                                SpecificationModel(name: "VRAM", quantity: 0, un:"MHz")
                            ]
                         ),
        ParameterBarModel(pieceName: "Armazenamento", dropDown:
                            [
                                SpecificationModel(name: "GB", quantity: 0, un:"GB"),
                            ]
                         ),
        ParameterBarModel(pieceName: "Memória RAM", dropDown:
                            [
                                SpecificationModel(name: "GB", quantity: 0, un:"GB"),
                            ]
                         ),
        ParameterBarModel(pieceName: "Fonte", dropDown:
                            [
                                SpecificationModel(name: "W", quantity: 0, un:"W"),
                            ]
                         ),
    ]
    //Função para incrementar cada item separadamente
    func incrementar(pecaIndex: Int, SpecIndex: Int){
        
        switch pecaIndex{
          //Incremetar Processador
        case 0:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 0{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 2
            } else if valorAtual < 32 {
                pecas[pecaIndex].dropDown[SpecIndex].quantity *= 2
            }else{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            }
            break
            //--------------------
            //Incrementar Placa de Vídeo
        case 1:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 0{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 2
            } else if valorAtual < 32 {
                pecas[pecaIndex].dropDown[SpecIndex].quantity *= 2
            }else{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            }
            break
            //---------------------
            //Incrementar armazenamento
        case 2:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 0{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 128
                print( "Iniciou o valor com 2")
            }else if valorAtual < 2048{
                pecas[pecaIndex].dropDown[SpecIndex].quantity *= 2
                print("\(valorAtual) foi multiplicado por 2")
            }else{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
                print("Zerou o contador")
            }
            //---------------------
            //Incrementar Memória RAM
        case 3:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 0{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 4
                print( "Iniciou o valor com 2")
            }else if valorAtual < 256{
                pecas[pecaIndex].dropDown[SpecIndex].quantity *= 2
                print("\(valorAtual) foi multiplicado por 2")
            }else{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
                print("Zerou o contador")
            }
            break
            //---------------------
            //Incrementar Fonte
        case 4:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            
            if valorAtual < 1000 {
                pecas[pecaIndex].dropDown[SpecIndex].quantity += 100
            }else{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            }
            break
            //---------------------
        default:
            pecas[pecaIndex].dropDown[SpecIndex].quantity += 1
            print("Conseguiu Incrementar")
        }
        
        //        if pecaIndex == 3{
        //            var valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
        //            if valorAtual == 0{
        //                pecas[pecaIndex].dropDown[SpecIndex].quantity = 2
        //                print( "Iniciou o valor com 2")
        //            }else if valorAtual < 256{
        //                pecas[pecaIndex].dropDown[SpecIndex].quantity *= 2
        //                print("\(valorAtual) foi multiplicado por 2")
        //            }else{
        //                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
        //                print("Zerou o contador")
        //            }
        //        }else{
        //            pecas[pecaIndex].dropDown[SpecIndex].quantity += 1
        //            print("Conseguiu Incrementar")
        //
        //        }
        
    }
    func decrementar(pecaIndex: Int, SpecIndex: Int){
        
        switch pecaIndex{
           //Decrementar Processador
        case 0:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 2{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            } else if valorAtual <= Int.max {
                pecas[pecaIndex].dropDown[SpecIndex].quantity /= 2
            }
            break
            //---------------------
            //Decrementar Placa de vídeo
        case 1:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            
            if valorAtual == 2{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            }
            else if valorAtual > 0 {
                pecas[pecaIndex].dropDown[SpecIndex].quantity /= 2
            }else{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            }
            break
            //---------------------
            //Decrementar Armazenamento
        case 2:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 128{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            } else if valorAtual <= Int.max {
                pecas[pecaIndex].dropDown[SpecIndex].quantity /= 2
            }
            break
            //---------------------
            //Decrementar Memória RAM
        case 3:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 4{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            } else if valorAtual <= Int.max {
                pecas[pecaIndex].dropDown[SpecIndex].quantity /= 2
            }
            break
            //---------------------
            //Decrementar Fonte
        case 4:
            let valorAtual = pecas[pecaIndex].dropDown[SpecIndex].quantity
            
            if valorAtual < 1000 {
                pecas[pecaIndex].dropDown[SpecIndex].quantity += 100
            }else{
                pecas[pecaIndex].dropDown[SpecIndex].quantity = 0
            }
            //---------------------
        default:
            print("Oi do deco")
        }
    }
}
