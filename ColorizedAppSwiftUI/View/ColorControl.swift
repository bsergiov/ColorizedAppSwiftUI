//
//  ColorControl.swift
//  ColorizedAppSwiftUI
//
//  Created by BSergio on 20.02.2022.
//

import SwiftUI

struct ColorControl: View {
    @Binding var colorValue: Double
    @Binding var tfColorValue: String
    @State var alertPresented = false
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(colorValue, specifier: "%.0f")")
                .frame(width: 55, alignment: .leading)
                .foregroundColor(.white)
            Slider(value: $colorValue, in: 0...255)
                .accentColor(color)
                .onSubmit({
                    print("tut \(colorValue)")
                    tfColorValue = "\(colorValue)"
                })
                TextField("\(colorValue, specifier: "%.0f")", text: $tfColorValue)
                    .frame(width: 55)
                    .background(.white)
                    .cornerRadius(5)
                    .keyboardType(.numberPad)
                    .onSubmit {
                        if let colorValue = Double(tfColorValue), colorValue <= 255 {
                            self.colorValue = colorValue
                            tfColorValue = ""
                            return
                        }
                        alertPresented.toggle()
                        tfColorValue = ""
                    }
                    
                    .navigationTitle(Text("\(colorValue)"))
            
        }.padding().alert("Wrong Format", isPresented: $alertPresented, actions: {}, message: {})
    }
}
