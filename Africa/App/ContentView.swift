//
//  ContentView.swift
//  Africa
//
//  Created by Macbook Pro on 12/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        // MARK: - properties
        
        // MARK: - body
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarTitle("Africa", displayMode: .large)
        }
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
    }
}
// MARK: - preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
