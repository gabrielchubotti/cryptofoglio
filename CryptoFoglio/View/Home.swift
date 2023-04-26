//
//  Home.swift
//  CryptoFoglio
//
//  Created by Gabriel Chu Bottiglieri on 25/04/23.
//

import SwiftUI

struct Home: View {
    
    // VARIABLES
    @State var currentCoin: String = "BTC"
    @Namespace var animation
    
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
    
    /// MARK: Create Segmented Control
    @ViewBuilder
    func CustomControl() -> some View {
        let coins = ["BTC","ETH","BNB"]
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 15) {
                ForEach(coins, id: \.self){ coin in
                    Text(coin)
                        .foregroundColor(currentCoin == coin ? .white : .gray)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .contentShape(Rectangle())
                        .background{
                            if currentCoin == coin {
                                Rectangle()
                                    .fill(Color("Tab"))
                                    .matchedGeometryEffect(id: "SEGMENTEDTAB", in: animation)
                            }
                        }
                        .onTapGesture {
                            withAnimation{currentCoin = coin}
                        }
                }
            }
        }
        .background{
            RoundedRectangle(cornerRadius: 5, style: .continuous)
                .stroke(Color.white.opacity(0.2), lineWidth: 1)
        }
        .padding(.vertical)
        
    }
        
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
