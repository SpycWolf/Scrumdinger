//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Kota Kaneko on 2022/01/18.
//

import SwiftUI

struct ScrumsView: View {
    let scrum: [DailyScrum]

    var body: some View {
        List {
            ForEach(scrum) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrum: DailyScrum.sampleData)
        }
    }
}
