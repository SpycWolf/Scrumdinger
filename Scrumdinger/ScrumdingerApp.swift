//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Kota Kaneko on 2022/01/18.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
