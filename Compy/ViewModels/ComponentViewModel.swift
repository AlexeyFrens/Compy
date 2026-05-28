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
            pieceName: "Memória RAM",
            dropDown:[
                SpecificationModel(name: "Tamanho", quantity: 0, un:"GB")
            ],
            about: "A memória RAM guarda temporariamente os dados dos programas que estão sendo usados no momento para deixá-los mais rápidos. Ela funciona como a memória de curto prazo do computador. Igual quando você abre 27 abas no navegador e promete que vai ler depois. Mas tem um detalhe: quando o computador desliga, tudo o que estava nela é apagado."),
        ParameterBarModel(
            pieceName: "Fonte",
            dropDown:[
                SpecificationModel(name: "Capacidade", quantity: 0, un:"W")
            ],
            about: "A fonte de alimentação converte a energia da tomada em uma energia segura e utilizável para o computador. Ela garante que todas as peças recebem energia de forma correta e estável, ajudando a proteger o sistema contra oscilações elétricas."
        ),
        ParameterBarModel(
            pieceName: "Armazenamento",
            dropDown:[
                SpecificationModel(name: "Tamanho", quantity: 0, un:"GB")
            ],
            about: "É onde ficam salvos os arquivos do computador, como fotos, vídeos, músicas, jogos e programas. \n\nUm HD costuma ter tamanhos maiores, suportando mais arquivos, mas SSDs são mais velozes e resistentes fisicamente."
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
            pieceName: "Processador",
            dropDown: [
                SpecificationModel(name: "Frequência", quantity: 0, un:"GHz"),
                SpecificationModel(name: "Núcleos", quantity: 0, un: "")
            ],
            about: "O processador é o cérebro do computador. Ele é responsável por processar informações, executar cálculos, interpretar comandos e fazer os programas funcionarem. \n\nA velocidade do processador determina /Users/andre/Desktop/Compy/Compy/ViewModels/ComponentViewModel.swifta rapidez com que ele executa tarefas e processa informações. Quanto mais rápido ele for, menos tempo você passa esperando programas abrirem. \n\nOs núcleos funcionam como “mini processadores” dentro do processador principal. Quanto mais núcleos ele tiver, mais tarefas consegue executar ao mesmo tempo."
        ),
    ]
    
    func indexSituationText(specification: String) -> Int {
        switch specification {
        case "processorSpeed":
            switch pecas[4].dropDown[0].quantity {
            case 0:
                return 0
            case 1.6...2.5:
                return 1
            case 3.5...4:
                return 2
            default:
                return 3
            }
        case "processorCore":
            switch pecas[4].dropDown[1].quantity {
            case 0:
                return 0
            case 2...4:
                return 1
            case 6...8:
                return 2
            default:
                return 3
            }
        case "videoCardVram":
            switch pecas[3].dropDown[0].quantity {
            case 0:
                return 0
            case 6...8:
                return 1
            case 12...16:
                return 2
            default:
                return 3
            }
        case "videoCardClock":
            switch pecas[3].dropDown[1].quantity {
            case 0:
                return 0
            case 1.2...1.6:
                return 1
            case 1.8...2.5:
                return 2
            default:
                return 3
            }
        case "storage":
            switch pecas[2].dropDown[0].quantity {
            case 0:
                return 0
            case 256:
                return 1
            case 512:
                return 2
            default:
                return 3
            }
        case "memory":
            switch pecas[0].dropDown[0].quantity {
            case 0:
                return 0
            case 4:
                return 1
            case 8:
                return 2
            case 16:
                return 3
            case 32:
                return 4
            default:
                return 5
            }
        case "powerSupply":
            switch pecas[1].dropDown[0].quantity {
            case 0:
                return 0
            case 300...400:
                return 1
            case 500:
                return 2
            case 600...750:
                return 3
            default:
                return 4
            }
        default:
            return 0
        }
    }
    
    func getSituationText(key: String) -> String {
        
        let currentIndex = indexSituationText(specification: key)
        
        guard let textsList = situationTextViewModel.situationTexts[key] else {
            return "Não foi possível encontrar o array de textos"
        }
        
        if !(currentIndex >= 0 && currentIndex < textsList.count) {
            return "Indice fora do valor permitido"
        }
        
        return textsList[currentIndex]
    }
}
