//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by BSergio on 18.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var colorScreen: Color = .gray
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    @State private var tfRedValue = ""
    @State private var tfGreenValue = ""
    @State private var tfBlueValue = ""
    @State private var isPresentedAlert = false
   
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                PreviewRectangle(redValue: redValue,
                                 greenValue: greenValue,
                                 blueValue: blueValue)
                
                ColorControl(colorValue: $redValue, tfColorValue: $tfRedValue, color: .red)
                ColorControl(colorValue: $greenValue, tfColorValue: $tfGreenValue, color: .green)
                ColorControl(colorValue: $blueValue, tfColorValue: $tfBlueValue, color: .blue)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
