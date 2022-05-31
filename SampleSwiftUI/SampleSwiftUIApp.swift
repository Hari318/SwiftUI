//
//  SampleSwiftUIApp.swift
//  SampleSwiftUI
//
//  Created by SUMO on 07/05/22.
//

import SwiftUI

@main
struct SampleSwiftUIApp: App {
    @StateObject var order = Order()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
