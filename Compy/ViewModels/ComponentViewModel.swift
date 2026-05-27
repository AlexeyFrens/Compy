//
//  ComponentViewModel.swift
//  Compy
//
//  Created by João Cláudio dos Santos Souza on 26/05/26.
//

import Observation
import SwiftUI

@Observable
class ComponentViewModel {
    
    var situationTextViewModel = SituationTextViewModel()
    
    var parameterBar: ParameterBarViewModel
    
    init() {
        self.parameterBar = ParameterBarViewModel()
    }
    
    var pecas: [ParameterBarModel] = [
        ParameterBarModel(
            pieceName: "Processador",
            dropDown: [
                SpecificationModel(name: "Frequência", quantity: 0, un:"GHz"),
                SpecificationModel(name: "Núcleos", quantity: 0, un: "")
            ],
            about: "O processador é o cérebro do computador. Ele é responsável por processar informações, executar cálculos, interpretar comandos e fazer os programas funcionarem. \n\nA velocidade do processador determina /Users/andre/Desktop/Compy/Compy/ViewModels/ComponentViewModel.swifta rapidez com que ele executa tarefas e processa informações. Quanto mais rápido ele for, menos tempo você passa esperando programas abrirem. \n\nOs núcleos funcionam como “mini processadores” dentro do processador principal. Quanto mais núcleos ele tiver, mais tarefas consegue executar ao mesmo tempo."
        ),
        ParameterBarModel(
            pieceName: "Placa de Vídeo",
            dropDown: [
                SpecificationModel(name: "Núcleos", quantity: 0, un:""),
                SpecificationModel(name: "VRAM", quantity: 0, un: "GHz")
            ],
            about: "A placa de vídeo é responsável por processar as imagens exibidas no monitor. Ela ajuda o computador a rodar jogos, vídeos em alta qualidade, animações e programas gráficos mais pesados. É ela que impede seus jogos de parecerem uma apresentação de slides. \n\nVRAM é a memória da placa de vídeo. Quanto maior ela for, mais detalhes gráficos e texturas podem ser carregados sem perder desempenho. \n\nO clock representa a velocidade com que a placa de vídeo processa informações gráficas. Em geral, frequências maiores ajudam no desempenho em jogos e programas gráficos."
        ),
        ParameterBarModel(
            pieceName: "Armazenamento",
            dropDown:[
                SpecificationModel(name: "GB", quantity: 0, un:"GB")
            ],
            about: "É onde ficam salvos os arquivos do computador, como fotos, vídeos, músicas, jogos e programas. \n\nUm HD costuma ter tamanhos maiores, suportando mais arquivos, mas SSDs são mais velozes e resistentes fisicamente."
        ),
        ParameterBarModel(
            pieceName: "Memória RAM",
            dropDown:[
                SpecificationModel(name: "GB", quantity: 0, un:"GB")
            ],
            about: "A memória RAM guarda temporariamente os dados dos programas que estão sendo usados no momento para deixá-los mais rápidos. Ela funciona como a memória de curto prazo do computador. Igual quando você abre 27 abas no navegador e promete que vai ler depois. Mas tem um detalhe: quando o computador desliga, tudo o que estava nela é apagado."),
        ParameterBarModel(
            pieceName: "Fonte",
            dropDown:[
                SpecificationModel(name: "W", quantity: 0, un:"W")
            ],
            about: "A fonte de alimentação converte a energia da tomada em uma energia segura e utilizável para o computador. Ela garante que todas as peças recebem energia de forma correta e estável, ajudando a proteger o sistema contra oscilações elétricas."
        ),
    ]
    
    var indexSituationText: [String: Int] = [
        "processorSpeed": 0,
        "processorCore": 0,
        "videoCardVram": 0,
        "videoCardClock": 0,
        "storage": 0,
        "memory": 0,
        "powerSupply": 0
    ]
    
    func getSituationText(key: String) -> String {
        
        guard let currentIndex = indexSituationText[key] else {
            return "Indice inválido"
        }
        
        guard let textsList = situationTextViewModel.situationTexts[key] else {
            return "Não foi possível encontrar o array de textos"
        }
        
        if !(currentIndex >= 0 && currentIndex < textsList.count) {
            return "Indice fora do valor permitido"
        }
        
        return textsList[currentIndex]
    }
}
