# CandleSticksExample

1. [O que é](#1-o-que-é-o-gráfico-de-velas)
2. [Requerimentos](#2-requirementos)
3. [Uso](#3-uso)
    - [Forma de criar gráficos](#forma-de-criar-gráficos)
    - [Forma de receber os dados](#forma-de-receber-os-dados)
4. [Formato de entrada de dados](#4-formato-de-entrada-de-dados)
5. [Componentes](#5-componentes)
      - [Parâmetros de entrada para criação do gráfico](#parâmetros-de-entrada-para-criação-do-gráfico)
      - [Parâmetros de entrada para criação das velas](#parâmetros-de-entrada-para-criação-das-velas)
6. [Autores](#6-autores)

# 1. O que é o gráfico de velas
Para demonstrar flutuações dos valores de mercado de ações, o gráfico de velas é um grande auxílio para identificar os períodos de alta, lateralização e queda dos valores. Esse é um gráfico que tem uma complexidade maior de leitura já que ele depende de muitos fatores, sendo composto por três elementos principais: período, que mostra o que houve com o preço de uma ação em determinado tempo, o formato, que informa o preço da ação durante o período que foi escolhido, e a cor, que demonstra se a vela está alta (verde) ou baixa (vermelho). Sendo assim possível realizar análises de mercado e definir quais são os melhores investimentos, de acordo com os cenários apresentados.

# 2. Requirementos
- iOS 13 ou mais
- macOS 15 ou mais
- XCode 11 ou mais

# 3. Uso
### Forma de criar gráficos
Com cores padrão:
```swift
let viewModel = ContentViewModel()

CandleSticksChart(data: viewModel.data, xLabels: viewModel.xLabels)
```

<img width="300" alt="Screen Shot 2021-11-05 at 16 21 37" src="https://user-images.githubusercontent.com/49920539/140566917-5e77d30c-1967-4213-8be7-91fea45a5fb3.png"><img width="300" alt="Screen Shot 2021-11-05 at 16 21 15" src="https://user-images.githubusercontent.com/49920539/140566929-cc756bf4-3b1a-41df-a1be-227343a24811.png">

Com cores modificadas:
```swift
let viewModel = ContentViewModel()

CandleSticksChart(data: viewModel.data, xLabels: viewModel.xLabels, barColor: .gray, labelColor: .gray, increaseCandleColor: .primary, decreaseCandleColor: .gray)
```

### Forma de receber os dados
```swift
let viewModel = ContentViewModel()
````

# 4. Formato de entrada de dados
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
# 5. Componentes
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

# 6. Autores
Gabriel Ferreira de Carvalho 

Debora Kassardian

Rebecca Mello dos Santos
