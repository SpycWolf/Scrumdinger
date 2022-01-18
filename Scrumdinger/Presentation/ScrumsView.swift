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
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrum: DailyScrum.sampleData)
    }
}
