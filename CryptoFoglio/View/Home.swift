//
//  Home.swift
//  CryptoFoglio
//
//  Created by Gabriel Chu Bottiglieri on 25/04/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            HStack(spacing: 15) {
                Circle()
                    .fill(.red)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Bitcoin")
                        .font(.callout)
                    Text("BTC")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
        
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
