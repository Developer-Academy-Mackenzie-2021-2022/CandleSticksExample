# CandleSticksExample

1. [Requerimentos](#requirementos)
2. [Uso](#uso)
    - [Forma de criar gráficos](#forma-de-criar-gráficos)
    - [Forma de receber os dados](#forma-de-receber-os-dados)
3. [Formato de entrada de dados](#formato-de-entrada-de-dados)
4. [Componentes](#componentes)
      - [Parâmetros de entrada para criação do gráfico](#parâmetros-de-entrada-para-criação-do-gráfico)
      - [Parâmetros de entrada para criação das velas](#parâmetros-de-entrada-para-criação-das-velas)
5. [Autores](#autores)

## Requirementos
- iOS 13 ou mais
- macOS 15 ou mais
- XCode 11 ou mais

## Uso
### Forma de criar gráficos
Com cores padrão:
```swift
let viewModel = ContentViewModel()

CandleSticksChart(data: viewModel.data, xLabels: viewModel.xLabels)
```
![Light](https://i.imgur.com/ETREg5N.jpg)
![Dark](https://i.imgur.com/CWMrI7Z.jpg)

Com cores modificadas:
```swift
let viewModel = ContentViewModel()

CandleSticksChart(data: viewModel.data, xLabels: viewModel.xLabels, barColor: .gray, labelColor: .gray, increaseCandleColor: .primary, decreaseCandleColor: .gray)
```

### Forma de receber os dados
```swift
let viewModel = ContentViewModel()
````

## Formato de entrada de dados
Exemplo de entrada
```swift
final class ContentViewModel: ObservableObject {
    
    let data: [CandleStickData] = [CandleStickData(highestTradedPrice: 200,
                                                   lowestTradedPrice: 100,
                                                   openTradedPrice: 170,
                                                   closeTradedPrice: 150),
                                   CandleStickData(highestTradedPrice: 100,
                                                   lowestTradedPrice: 0,
                                                   openTradedPrice: 70,
                                                   closeTradedPrice: 50),
                                   CandleStickData(highestTradedPrice: 150,
                                                   lowestTradedPrice: 70,
                                                   openTradedPrice: 90,
                                                   closeTradedPrice: 150),
                                   CandleStickData(highestTradedPrice: 200,
                                                   lowestTradedPrice: 100,
                                                   openTradedPrice: 170,
                                                   closeTradedPrice: 150)]
    
    let xLabels: [String] = ["jan", "fev", "mar"]
}
````
## Componentes
### Parâmetros de entrada para criação do gráfico
Nome | Tipo | Descrição | Obrigatório
------------ | ------------- | ------------- | -------------
data | Vetor de CandleStickData | Vetor que recebe os dados para a montagem de cada vela | Sim
xLabels | Vetor de Strings | Vetor que contém os rótulos do eixo X | Sim
barColor | Color | Cor dos eixos X e Y do gráfico | Não
labelColor | Color | Cor dos rótulos dos eixos | Não
increaseCandleColor | Color | Cor da vela de quando está em alta (que tem a cor verde como padrão) | Não
decreaseCandleColor | Color | Cor da vela de quando está em baixa (que tem a cor vermelha como padrão) | Não

### Parâmetros de entrada para criação das velas
Nome | Tipo | Descrição 
------------ | ------------- | ------------- 
highestTradedPrice | Double | Maior valor negociado
lowestTradedPrice | Double | Menor valor negociado
openTradedPrice | Double | Valor de abertura
closeTradedPrice | Double | Valor de fechamento

## Autores
Gabriel Ferreira de Carvalho 

Debora Kassardian

Rebecca Mello dos Santos
