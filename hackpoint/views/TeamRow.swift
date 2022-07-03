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
        GeometryReader { geo in
            HStack(spacing: 0.0) {
                Text(team.name)
                        .frame(
                                width: geo.size.width - 40,
                                alignment: .leading)
                        .padding(.horizontal, 20)
                        .font(.custom("Poppins-SemiBold", fixedSize: 20))
            }
                    .padding(.vertical)
                    .background(.white)
                    .cornerRadius(20)
        }
    }
}

struct TeamRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TeamRow(team: teamsFake[0])
            TeamRow(team: teamsFake[1])
            TeamRow(team: teamsFake[3])
        }
                .previewLayout(.fixed(width: 300, height: 100))
                .background(Color.init("#e0e0e0"))
    }
}
