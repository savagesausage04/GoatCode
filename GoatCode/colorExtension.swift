//
//  colorExtension.swift
//  GoatCode
//
//  Created by Aayush Sehgal on 8/22/23.
//

import Foundation
import SwiftUI
extension Color {
    init(hex: String) {
        let hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        let hexTrimmed = String(hexSanitized.dropFirst(hexSanitized.hasPrefix("#") ? 1 : 0))
        let scanner = Scanner(string: hexTrimmed)
        
        var hexNumber: UInt64 = 0
        
        if scanner.scanHexInt64(&hexNumber) {
            let r = Double((hexNumber & 0xFF0000) >> 16) / 255
            let g = Double((hexNumber & 0x00FF00) >> 8) / 255
            let b = Double(hexNumber & 0x0000FF) / 255
            
            self.init(red: r, green: g, blue: b)
        } else {
            self.init(white: 1.0)
        }
    }
    
    func toHex() -> String {
        let components = self.cgColor!.components!
        let r = components[0]
        let g = components[1]
        let b = components[2]
        return String(format: "#%02X%02X%02X", (Int)(r * 255), (Int)(g * 255), (Int)(b * 255))
    }
}

