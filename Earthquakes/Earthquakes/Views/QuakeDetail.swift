//
//  QuakeDetail.swift
//  Earthquakes
//
//  Created by Chad Rutherford on 1/23/23.
//

import SwiftUI

struct QuakeDetail: View {
    var quake: Quake
    
    var body: some View {
        VStack {
            QuakeMagnitude(quake: quake)
            Text(quake.place)
                .font(.title3)
                .bold()
            Text("\(quake.time.formatted(date: .long, time: .standard))")
                .foregroundStyle(.secondary)
            if let location = quake.location {
                Text("Latitude: \(location.latitude.formatted(.number.precision(.fractionLength(3))))")
                Text("Longitude: \(location.longitude.formatted(.number.precision(.fractionLength(3))))")
            }
        }
    }
}

struct QuakeDetail_Previews: PreviewProvider {
    static var previews: some View {
        QuakeDetail(quake: Quake.preview)
    }
}
