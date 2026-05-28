//
//  MainScreen.swift
//  Compy
//
//  Created by Rebeca Emanuela Calmon de Andrade Alves on 27/05/26.
//
import SwiftUI

struct MainScreen: View {
    @Environment(ComponentViewModel.self) var component
    
    var body: some View {
                GeometryReader { geometry in

                    let isPad = geometry.size.width > 600

                    ZStack {

                        Color("FundoParede")
                            .ignoresSafeArea()

                        Image("AmbienteDeInteracao")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(
                                width: geometry.size.width,
                                height: geometry.size.height
                            )
                            .ignoresSafeArea()

                        // ORGANIZAÇÃO DA TELA
                        VStack {

                            Spacer()

                            // CONTEÚDO PRINCIPAL
                            HStack(alignment: .top) {

                                // GABINETE
                                Gabinete(component: _component)

                                // MONITOR
                                Image("MonitorVazio")

                                // BOTÃO TUTORIAL
                                VStack {

                                    TutorialButton()

                                    Spacer()
                                }
                            }
                            .padding(.horizontal, isPad ? 40 : 20)

                        }
                    }
                    .toolbar(.hidden, for: .navigationBar)
                }
            }
        }


#Preview {
    let cvm = ComponentViewModel()
    MainScreen()
        .environment(cvm)
}
