//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Самир Кафаров on 25.10.2022.
//

import SwiftUI

struct ButtonView: View {

   @ObservedObject var timer: TimeCounter
    
    var body: some View {
        
        Button(action: {timer.startTimer()}) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        }
    }

}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(timer: TimeCounter())
    }
}
