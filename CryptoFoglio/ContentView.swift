//
//  ContentView.swift
//  CryptoFoglio
//
//  Created by Gabriel Chu Bottiglieri on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
