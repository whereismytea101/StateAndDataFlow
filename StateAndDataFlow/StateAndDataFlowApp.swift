//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Самир Кафаров on 25.10.2022.
//

import SwiftUI

@main
struct StateAndDataFlow: App {
    private let user = DataManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
