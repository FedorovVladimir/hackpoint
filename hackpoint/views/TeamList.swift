//
//  TeamList.swift
//  hackpoint
//
//  Created by Владимир Федоров on 30.06.2022.
//

import SwiftUI

struct TeamList: View {
    var body: some View {
        List(teams, id: \.id) { team in
            TeamRow(team: team)
        }
    }
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        TeamList()
    }
}
