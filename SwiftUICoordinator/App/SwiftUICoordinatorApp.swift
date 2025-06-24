//
//  SwiftUICoordinatorApp.swift
//  SwiftUICoordinator
//
//  Created by A'zamjon Abdumuxtorov on 24/06/25.
//

import SwiftUI

@main
struct SwiftUICoordinatorApp: App {
    var body: some Scene {
        WindowGroup {
            CoordinatorStack(MainCoordinatorPages.root)
        }
    }
}
