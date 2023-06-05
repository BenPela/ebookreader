//
//  ebookreaderApp.swift
//  ebookreader
//
//  Created by Andrew on 2023-05-16.
//

import SwiftUI

@main
struct ebookreaderApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
                .environmentObject(BookModel())
        }
    }
}
