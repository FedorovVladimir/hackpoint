//
//  Network.swift
//  hackpoint
//
//  Created by Владимир Федоров on 03.07.2022.
//

import Foundation

class NetworkTestServer: ObservableObject {

    @Published var teams: [Team] = []

    func getTeams() -> [Team] {
        teams
    }

    func loadTeams() {
        guard let url = URL(string: "http://localhost:8080/teams") else {
            fatalError("Missing URL")
        }

        let urlRequest = URLRequest(url: url)

        let dateTask = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                print("Request error: ", error)
                return
            }

            guard let response = response as? HTTPURLResponse else {
                return
            }

            if response.statusCode == 200 {
                guard let data = data else {
                    return
                }
                DispatchQueue.main.async {
                    do {
                        let decodedTeams = try JSONDecoder().decode([Team].self, from: data)
                        self.teams = decodedTeams
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }
        dateTask.resume()
    }
}
