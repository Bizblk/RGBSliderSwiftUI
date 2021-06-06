//
//  sliderView.swift
//  RGBSliderSwiftUI
//
//  Created by Виталий Оранский on 06.06.2021.
//

import SwiftUI

struct SliderView: View {
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(Color(
                red: redValue / 255,
                green: greenValue / 255,
                blue: blueValue / 255
            ))
            .frame(width: 350, height: 150)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
    }
}

struct sliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(redValue: .constant(0), greenValue: .constant(30), blueValue: .constant(10))
    }
}
