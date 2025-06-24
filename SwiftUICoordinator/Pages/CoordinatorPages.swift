//
//  CoordinatorPages.swift
//  SwiftUICoordinator
//
//  Created by A'zamjon Abdumuxtorov on 24/06/25.
//

import SwiftUI

enum MainCoordinatorPages:Coordinatable {
    var id: UUID {.init()}
    
    case root
    
    case login(title:String)
    
    case signUp
    
    var body: some View {
        switch self {
        case .root:
            MainView()
        case .login(title: let title):
            CoordinatorStack(LoginCoordinatorPages.root(title: title))
        case .signUp:
            SignUpView()
        }
    }
}

enum LoginCoordinatorPages:Coordinatable{
    var id: UUID {.init()}
    
    case root(title: String)
    
    case forgotPassword
    
    var body: some View{
        switch self {
        case .root(let title):
            LoginView(title:title)
        case .forgotPassword:
            ForgotPasswordView()
        }
    }
}
