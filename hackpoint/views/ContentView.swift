//
//  ContentView.swift
//  hackpoint
//
//  Created by Владимир Федоров on 30.06.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var network: NetworkTestServer

    var body: some View {
        TeamList(teams: network.teams)
                .environmentObject(network)
                .onAppear {
                    network.loadTeams()
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NetworkTestServer())
    }
}
