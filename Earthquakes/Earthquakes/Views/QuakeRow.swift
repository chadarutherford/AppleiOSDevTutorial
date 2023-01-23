//
//  QuakeRow.swift
//  Earthquakes
//
//  Created by Chad Rutherford on 1/22/23.
//

import SwiftUI

struct QuakeRow: View {
    var quake: Quake
    
    var body: some View {
        HStack {
            QuakeMagnitude(quake: quake)
            VStack(alignment: .leading) {
                Text(quake.place)
                    .font(.title3)
                Text("\(quake.time.formatted(.relative(presentation: .named)))")
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical, 8)
    }
}

struct QuakeRow_Previews: PreviewProvider {
    static var previews: some View {
        QuakeRow(quake: Quake.preview)
            .previewLayout(.sizeThatFits)
    }
}
