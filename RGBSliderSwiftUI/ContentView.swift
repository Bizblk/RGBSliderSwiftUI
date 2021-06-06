//
//  ContentView.swift
//  RGBSliderSwiftUI
//
//  Created by Виталий Оранский on 06.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
        
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                SliderView(redValue: $redSliderValue, greenValue: $greenSliderValue, blueValue: $blueSliderValue)
                
                ColorSlider(sliderValue: $redSliderValue, color: .red)
                ColorSlider(sliderValue: $greenSliderValue, color: .green)
                ColorSlider(sliderValue: $blueSliderValue, color: .blue)

                Spacer()

            }.padding()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
