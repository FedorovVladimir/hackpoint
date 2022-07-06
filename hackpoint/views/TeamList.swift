//
//  TeamList.swift
//  hackpoint
//
//  Created by Владимир Федоров on 30.06.2022.
//

import SwiftUI

struct TeamList: View {
    @EnvironmentObject var network: NetworkTestServer

    var teams: [Team]

    var body: some View {
        VStack(alignment: .leading) {
            List {
                Section {
                    Text("Команды")
                            .padding(.top, 20)
                            .listRowBackground(Color.clear)
                            .font(.custom("Poppins-SemiBold", fixedSize: 40))
                    Text("Выберите команду для оценки")
                            .padding(.bottom, 10)
                            .listRowBackground(Color.clear)
                            .foregroundColor(Color.init("#696974"))
                            .font(.custom("Roboto", size: 16))
                    ForEach(teams, id: \.id) { team in
                        TeamRow(team: team)
                                .listRowBackground(Color.clear)
                                .padding(.bottom, 50)
                    }
                }
                        .listSectionSeparator(.hidden)
                        .listRowSeparator(.hidden)
            }
                    .listStyle(PlainListStyle())
                    .refreshable { network.loadTeams() }
        }
                .background(Color.init("#f3f3f3"))
    }
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        TeamList(teams: teamsFake)
    }
}
