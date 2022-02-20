//
//  PreviewRectangle.swift
//  ColorizedAppSwiftUI
//
//  Created by BSergio on 20.02.2022.
//

import SwiftUI

struct PreviewRectangle: View {
    
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        Rectangle()
            .cornerRadius(20)
            .foregroundColor(Color(red: redValue / 255,
                                   green: greenValue / 255,
                                   blue: blueValue / 255,
                                   opacity: 1))
            .frame(width: 300, height:350)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 10)
            )
    }
}
