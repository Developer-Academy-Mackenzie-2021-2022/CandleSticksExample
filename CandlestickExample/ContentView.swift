//
//  ContentView.swift
//  CandlestickExample
//
//  Created by Débora Kassardjian on 28/10/21.
//
import Everest
import SwiftUI

struct ContentView: View {
    @ObservedObject
    var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
                   ScrollView {
                       VStack(alignment: .leading) {
                           Text("Cores padrão")
                               .font(.title) //bold
                               .padding()
                           CandleSticksChart(data: viewModel.data, xLabels: viewModel.xLabels)
                               .frame(height: 300)
                           Text("Cores padrão que respeitam o funcionamento do dark e light mode")
                               .padding()
                               .font(.headline)
                           Text("Cores modificadas")
                               .font(.title) //bold
                               .padding()
                           CandleSticksChart(data: viewModel.data, xLabels: viewModel.xLabels, barColor: .gray, labelColor: .gray, increaseCandleColor: .primary, decreaseCandleColor: .gray)
                               .frame(height: 300)
                           Text("É possivel modificar as cores dos elementos de acordo com a sua necessiade modificando os parametros de cor")
                               .padding()
                               .font(.headline)


                       }
                   } .navigationTitle("Gráfico de velas")
               }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            let viewModel = ContentViewModel()
            ContentView()
                .preferredColorScheme(.light)
            ContentView()
                .preferredColorScheme(.dark)
            CandleSticksChart(data: viewModel.data, xLabels: viewModel.xLabels, barColor: .gray, labelColor: .gray, increaseCandleColor: .primary, decreaseCandleColor: .gray)
                .previewLayout(.fixed(width: 400, height: 400))
            CandleSticksChart(data: viewModel.data, xLabels: viewModel.xLabels)
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 400, height: 400))
            
        }
    }
}

/**
 
 
     CandleSticksChart(data: , xLabels: )
 */
