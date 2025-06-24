//
//  SwiftUICoordinatorApp.swift
//  SwiftUICoordinator
//
//  Created by A'zamjon Abdumuxtorov on 24/06/25.
//

import SwiftUI

@main
struct SwiftUICoordinatorApp: App {
    @State private var coordinator = Coordinator<MainCoordinatorPages>()
    var body: some Scene {
        WindowGroup {
            CoordinatorStack(MainCoordinatorPages.root)
                .environmentObject(coordinator)
        }
    }
}
