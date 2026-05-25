//
//  SpecificationViewModel.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//

import Foundation
internal import Combine

class ParameterBarViewModel : ObservableObject{
   @Published var pecas: [ParameterBarModel] = [
        ParameterBarModel(pieceName: "Processador", dropDown:
            [
                SpecificationModel(name: "Threads", quantity: 0),
                SpecificationModel(name: "Núcleos", quantity: 0)
            ]
            ),
        ParameterBarModel(pieceName: "Placa de Vídeo", dropDown:
            [
                SpecificationModel(name: "Núcleos", quantity: 0),
                SpecificationModel(name: "VRAM", quantity: 0)
            ]
            ),
        ParameterBarModel(pieceName: "Armazenamento", dropDown:
            [
                SpecificationModel(name: "GB", quantity: 0),
            ]
            ),
        ParameterBarModel(pieceName: "Memória RAM", dropDown:
            [
                SpecificationModel(name: "GB", quantity: 0),
            ]
            ),
        ParameterBarModel(pieceName: "Fonte", dropDown:
            [
                SpecificationModel(name: "W", quantity: 0),
            ]
            ),
        ]
    func incrementar(pecaIndex: Int, SpecIndex: Int){
        
        pecas[pecaIndex].dropDown[SpecIndex].quantity += 1
    }
    func decrementar(pecaIndex: Int, SpecIndex: Int){
        if  pecas[pecaIndex].dropDown[SpecIndex].quantity <= 0{
            pecas[pecaIndex].dropDown[SpecIndex].quantity  = 0
        }else{
            pecas[pecaIndex].dropDown[SpecIndex].quantity -= 1
        }
      
    }
}
