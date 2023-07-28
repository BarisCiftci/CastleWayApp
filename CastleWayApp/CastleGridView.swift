//
//  CastleGridView.swift
//  CastleWayApp
//
//  Created by Baris Ciftci on 28/07/2023.
//

import SwiftUI

struct CastleGridView: View {
    
    @ObservedObject var castleData = CastleData()
    var column = [GridItem(.flexible()),
                  GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column) {
                    
                    ForEach(castleData.castles) {castle in
                        
                        VStack(alignment: .leading){
                            NavigationLink(destination: CastleListView()) {
                                Rectangle()
                                
                                    .frame(height: 180)
                                    .overlay(
                                        Image(castle.imageName)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                        
                                    ).cornerRadius(8)
                                    .clipped()
                                .padding(8)}
                            VStack(alignment: .leading, spacing: 6) {
                                Text(castle.name)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                
                                
                                Text(castle.address)
                                    .font(.footnote)
                                
                                HStack(spacing: 4) {
                                    
                                    Image(systemName: "checkmark.seal.fill")
                                    
                                    
                                    Text("Visited")
                                        .fontWeight(.bold)
                                    Spacer()
                                    Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                }
                                .font(.footnote)
                                .foregroundColor(.green)
                            }
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            
                        }
                        
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 4, x: 1, y: 1)
                    }
                    
                }
                .padding(8)
            }
            .navigationBarTitle("CastleWay")
            
        }
    }
}

struct CastleGridView_Previews: PreviewProvider {
    static var previews: some View {
        CastleGridView()
    }
}
