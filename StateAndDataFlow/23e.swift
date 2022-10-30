//
//  ButtonAppearanceModifier.swift
//  StateAndDataFlow
//
//  Created by Самир Кафаров on 30.10.2022.
//

import Foundation


struct BurronAppearanceModifier: ViewModifier {
    
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
    }
    
}
ButtonAppearanceModifier
