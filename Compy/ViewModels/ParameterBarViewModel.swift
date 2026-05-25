//
//  SpecificationViewModel.swift
//  Compy
//
//  Created by Andre on 25/05/26.
//

class ParameterBarViewModel{
    var pecas: [ParameterBarModel] = [
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
                SpecificationModel(name: "HD", quantity: 0),
            ]
            ),
        ParameterBarModel(pieceName: "Memória RAM", dropDown:
            [
                SpecificationModel(name: "Quantidade", quantity: 0),
            ]
            ),
        ParameterBarModel(pieceName: "Fonte", dropDown:
            [
                SpecificationModel(name: "Potência", quantity: 0),
            ]
            ),
        ]
    func incrementar(pecaIndex: Int, SpecIndex: Int){
        pecas[pecaIndex].dropDown[SpecIndex].quantity += 1
    }
    func decrementar(pecaIndex: Int, SpecIndex: Int){
        pecas[pecaIndex].dropDown[SpecIndex].quantity -= 1
    }
}
