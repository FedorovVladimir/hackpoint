//
//  TeamRow.swift
//  hackpoint
//
//  Created by Владимир Федоров on 30.06.2022.
//

import SwiftUI

struct TeamRow: View {
    var team: Team

    var body: some View {
        Text(team.name)
    }
}

struct TeamRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TeamRow(team: teams[0])
            TeamRow(team: teams[1])
        }
                .previewLayout(.fixed(width: 300, height: 70))
    }
}
