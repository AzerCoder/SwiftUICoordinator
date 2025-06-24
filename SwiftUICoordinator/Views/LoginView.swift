//
//  LoginView.swift
//  SwiftUICoordinator
//
//  Created by A'zamjon Abdumuxtorov on 24/06/25.
//

import SwiftUI

struct LoginView: View {
    
    var title:String
    
//    @EnvironmentObject private var loginCoordinator :Coordinator<LoginCoordinatorPages>
//    @EnvironmentObject private var mainCoordinator :Coordinator<MainCoordinatorPages>
//    
    
    @Environment(Coordinator<LoginCoordinatorPages>.self) private var loginCoordinator
    @Environment(Coordinator<MainCoordinatorPages>.self) private var mainCoordinator
    

    var body: some View {
        List{
            Button("Forgot Password"){
                loginCoordinator.push(.forgotPassword)
            }
            
            Button("Pop"){
                mainCoordinator.pop(.sheet)
            }
        }
        .navigationTitle(title)
    }
}

//#Preview {
//    LoginView()
//}
