//
//  Textfield.swift
//  RGBSliderSwiftUI
//
//  Created by Виталий Оранский on 06.06.2021.
//

import SwiftUI

struct SliderTextFiled: View {
    @Binding var sliderValue: Double
    @State var alertPresent = false
    
    let formatter = NumberFormatter()
    
    var body: some View {
        
        TextField("", value: $sliderValue, formatter: formatter)
            .frame(width: 50, height: 20)
            .background(Color.white)
            .keyboardType(.decimalPad)
            .multilineTextAlignment(.center)
            .cornerRadius(5)
            .onChange(of: sliderValue, perform: { value in
                validation()
            })
            .alert(isPresented: $alertPresent)  {
                               Alert(title: Text("Incorrect value!"), message: Text("Enter value from 0 to 255"))
                            }
            
        
    }
    
    
    private func validation() {
        if sliderValue < 0 || sliderValue > 255 {
            alertPresent.toggle()
            sliderValue = 0
            return
        }
    }
    
}

struct Textfield_Previews: PreviewProvider {
    static var previews: some View {
        SliderTextFiled(sliderValue: .constant(50))
    }
}
