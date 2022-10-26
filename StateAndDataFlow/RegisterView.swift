//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Самир Кафаров on 26.10.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) { 
                HStack {
                     Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isReguister.toggle()
        }
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
