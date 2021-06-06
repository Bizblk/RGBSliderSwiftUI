//
//  Slider.swift
//  RGBSliderSwiftUI
//
//  Created by Виталий Оранский on 06.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var sliderValue: Double
    let color: Color

    var body: some View {
        
      
            HStack(spacing: 20) {
                Text("\(lround(sliderValue))")
                    .frame(width: 40, height: 20)
                Slider(value: $sliderValue, in: 0...255, step: 1)
                    .frame(width: 250, height: 50)
                    .accentColor(color)
                Spacer()
                SliderTextFiled(sliderValue: $sliderValue)
            }
            
        
        

        
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(sliderValue: .constant(50), color: .red)
    }
}
