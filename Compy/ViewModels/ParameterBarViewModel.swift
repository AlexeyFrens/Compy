//
//  SpecificationViewModel.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//

import SwiftUI
import Observation


@Observable
class ParameterBarViewModel {
    
    var index = 0
    var SpecIndex = 0
    var PecaIndex = 0
    
    func avancar(totalPecas: Int) {
        SpecIndex = 0
        PecaIndex = PecaIndex >= totalPecas - 1 ? 0 : PecaIndex + 1
    }
    func voltar(totalPecas: Int) {
        SpecIndex = 0
        PecaIndex = PecaIndex <= 0 ? totalPecas - 1 : PecaIndex - 1
    }
    //Função para incrementar cada item separadamente
    func incrementar(componentViewModel: ComponentViewModel){
        
        switch PecaIndex{
            //Incremetar Processador
        case 0:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 0{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 1.2
                
            } else if valorAtual < 4.8 {
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity *= 2
            }else{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            }
            break
            //--------------------
            //Incrementar Placa de Vídeo
        case 1:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 0{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 6
            } else if valorAtual < 24 {
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity *= 2
            }else{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            }
            break
            //---------------------
            //Incrementar armazenamento
        case 2:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 0{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 256
                print( "Iniciou o valor com 2")
            }else if valorAtual < 1024{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity *= 2
                print("\(valorAtual) foi multiplicado por 2")
            }else{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
                print("Zerou o contador")
            }
            //---------------------
            //Incrementar Memória RAM
        case 3:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 0{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 4
                print( "Iniciou o valor com 4")
            }else if valorAtual < 64{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity *= 2
                print("\(valorAtual) foi multiplicado por 2")
            }else{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
                print("Zerou o contador")
            }
            break
            //---------------------
            //Incrementar Fonte
        case 4:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            
            if valorAtual < 1000 {
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity += 100
            }else{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            }
            break
            //---------------------
        default:
            componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity += 1
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
    func decrementar(componentViewModel: ComponentViewModel){
        
        switch PecaIndex{
            //Decrementar Processador
        case 0:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 2{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            } else if valorAtual <= Double.infinity {
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity /= 2
            }
            break
            //---------------------
            //Decrementar Placa de vídeo
        case 1:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            
            if valorAtual == 2{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            }
            else if valorAtual > 0 {
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity /= 2
            }else{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            }
            break
            //---------------------
            //Decrementar Armazenamento
        case 2:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 128{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            } else if valorAtual <= Double.infinity {
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity /= 2
            }
            break
            //---------------------
            //Decrementar Memória RAM
        case 3:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            if valorAtual == 4{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            } else if valorAtual <= Double.infinity {
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity /= 2
            }
            break
            //---------------------
            //Decrementar Fonte
        case 4:
            let valorAtual = componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity
            
            if valorAtual < 1000 {
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity += 100
            }else{
                componentViewModel.pecas[PecaIndex].dropDown[SpecIndex].quantity = 0
            }
            //---------------------
        default:
            print("Oi do deco")
        }
    }
}


