//
//  TextsViewMdel.swift
//  Compy
//
//  Created by Andre on 26/05/26.

import Observation

@Observable
class SituationTextViewModel {
    var situationTexts: [String:[String]] = [
        "processorSpeed": [
            "Com 0 GHz, o processador fica com ausência total de atividade, incapaz de calcular ou executar qualquer instrução.",
            "Geralmente é suficiente para tarefas do dia a dia, como navegar na internet, editar textos e assistir a vídeos.",
            "Muito bom para jogos e atividades mais complexas.",
            "Excelente para tarefas que exigem alto desempenho, como jogos pesados, edição de vídeo e programas profissionais.",
        ],
        "processorCore": [
            "O computador sequer ligaria ou daria sinal de vida, pois não existiria a unidade física necessária para ler ou executar instruções básicas.",
            "Dá para navegar na internet, assistir a vídeos engraçados e jogar jogos leves sem problemas.",
            "Já consegue rodar programas mais exigentes, editar vídeos e jogar jogos pesados com mais tranquilidade.",
            "Ideal para multitarefa pesada, programas profissionais e muitas tarefas abertas ao mesmo tempo sem o computador pedir socorro."
        ],
        "videoCardVram": [
            "O computador até poderá processar dados, mas não conseguirá exibir absolutamente nada, resultando em uma tela preta.",
            "Hoje em dia é o mínimo recomendado para rodar bem jogos em Full HD (1080p).",
            "Muito bom para Quad HD (1440p), 4K e jogos com gráficos mais avançados.",
            "Ideal para altas resoluções, texturas em qualidade máxima e para quem quer jogar tudo no ultra sem sofrimento."
        ],
        "videoCardClock": [
            "O computador não conseguirá renderizar absolutamente nada, nem a interface mais básica, deixando o monitor sem sinal.",
            "Bom para tarefas gráficas mais simples e jogos leves.",
            "Ótimo desempenho para jogos modernos e programas mais exigentes.",
            "Excelente para placas de vídeo de alto desempenho e tarefas gráficas pesadas."
        ],
        "storage": [
            "A máquina até ligará a tela, mas não iniciará de fato, pois não terá de onde carregar o sistema para você usar.",
            "Espaço suficiente para arquivos básicos, alguns jogos, programas e milhares de fotos e músicas. Se você fosse usar somente para armazenar foto, conseguiria guardar de 50 mil a 85 mil fotos",
            "Ótimo para quem usa muitos programas, guarda bastante mídia ou instala vários jogos. Dá para salvar a música Faroeste Caboclo 50.000 vezes.",
            "Excelente para armazenar muitos jogos, vídeos, projetos e arquivos grandes sem preocupação constante com espaço. Você conseguiria salvar o filme “Titanic” 330 vezes."
        ],
        "memory": [
            "A máquina até ligará na energia, mas travará imediatamente apitando erro na placa-mãe, incapaz de iniciar.",
            "Hoje em dia é considerado o mínimo, mas muitos programas podem ficar lentos e travar com facilidade.",
            "Funciona muito bem para a maioria das pessoas. Dá para estudar, trabalhar e usar vários programas sem muitos problemas.",
            "Excelente para jogos, edição de imagens e programas mais pesados. Travamentos se tornam bem menos comuns.",
            "Ideal para edição de vídeo, modelagem 3D e vários programas pesados abertos ao mesmo tempo.",
            "Indicado para trabalhos extremamente exigentes, como projetos profissionais avançados, programação pesada e grandes edições de vídeo."
        ],
        "powerSupply": [
            "A máquina não dará qualquer sinal de vida ao apertar o botão de ligar, pois nenhuma peça receberá eletricidade para funcionar.",
            "Usada em computadores simples para estudos, internet e programas leves.",
            "Suficiente para a maioria dos computadores comuns e alguns jogos.",
            "Indicada para computadores gamer e tarefas mais pesadas.",
            "Usada em computadores muito potentes, com placas de vídeo avançadas e aplicações profissionais exigentes."
        ]
    ]
}
