import SwiftUI

struct ParameterBarView: View {
    @StateObject var barra: ParameterBarViewModel
    @State var index = 0 // Índice da Peça (Processador, GPU, etc)

    var body: some View {
        // Calculamos a Spec de forma segura para evitar Index Out of Range

        let currentPiece = barra.pecas[index]
        let safeSpecIndex = (barra.index < currentPiece.dropDown.count) ? barra.index : 0
        let currentSpec = currentPiece.dropDown[safeSpecIndex]

        HStack {
            // Botão para voltar peça
            Button(action: {
                mudarPeca(para: -1)
            }) {
                Image(systemName: "arrowtriangle.backward.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }

            Text(currentPiece.pieceName)
                .frame(minWidth: 120)

            // Botão para avançar peça
            Button(action: {
                mudarPeca(para: 1)
            }) {
                Image(systemName: "arrowtriangle.forward.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
            }

            // Dropdown de especificações
            if currentPiece.dropDown.count > 1 {
                DropDown(barra: barra, isActive: false, index: $index)
            }

            // Decrementar
            Button(action: {
                barra.decrementar(pecaIndex: index, SpecIndex: safeSpecIndex)
            }) {
                Image(systemName: "minus.square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
            }

            // Quantidade formatada (Corrigido para 2 casas decimais)
            Text(String(format: "%.1f", currentSpec.quantity))
            
            // Unidade
            Text(currentSpec.un)

            // Incrementar
            Button(action: {
                barra.incrementar(pecaIndex: index, SpecIndex: safeSpecIndex)
            }) {
                Image(systemName: "plus.square.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .background(Color.fundoAlteradorParametros) // Certifique-se que essa cor existe no Assets
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }

    // Função auxiliar para mudar de peça e resetar o sub-índice
    private func mudarPeca(para direcao: Int) {
        // 1. Resetamos o índice da especificação para evitar que a nova peça
        // tente acessar um índice que não possui.
        barra.index = 0
        
        let novoIndex = index + direcao
        
        if novoIndex < 0 {
            index = barra.pecas.count - 1
        } else if novoIndex >= barra.pecas.count {
            index = 0
        } else {
            index = novoIndex
        }
    }
}

#Preview {
    ParameterBarView(barra: ParameterBarViewModel(), index: 0)
}
