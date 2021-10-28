//
//  ContentView.swift
//  CandlestickExample
//
//  Created by Débora Kassardjian on 28/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Rectangle()
                        .frame(height: 300)
                    Text("Sobre o gráfico de vela")
                        .font(.headline)
                        .padding()
                    Text("For we have a choice in this country. And just as we keep our keep our promise to the next generation here at home, so must we keep America's promise abroad. But my personal story is not so unique. When a new flu infects one human being, all are at risk.If you're working forty hours a week, you shouldn't be living in poverty. And it's a lesson we need to remember today - as members of another Joshua generation. It's a racial stalemate we've been stuck in for years. On November 4th, we must stand up and say: Eight is enough. Of course, recognizing our common humanity is only the beginning of our task. We know that is God's vision.")
                        .padding()

                }
            } .navigationTitle("Gráfico de Vela")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
