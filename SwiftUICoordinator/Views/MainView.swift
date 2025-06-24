//
//  MainView.swift
//  SwiftUICoordinator
//
//  Created by A'zamjon Abdumuxtorov on 24/06/25.
//

import SwiftUI

struct MainView: View {
    
//    @EnvironmentObject private var mainCoordinater: Coordinator<MainCoordinatorPages>
    
    @Environment(Coordinator<MainCoordinatorPages>.self) private var mainCoordinater
    
    var body: some View {
        List{
            Button("Sign Up"){
                mainCoordinater.push(.signUp)
            }
            
            Button("Login"){
                mainCoordinater.push(.login(title: "Hello Coordinator"),type: .sheet)
            }
        }
    }
}

#Preview {
    MainView()
}
