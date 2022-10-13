//
//  ContentView.swift
//  Intergalatic Travel
//
//  Created by Sora on 10/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                StarLink(name: "Blue Star")
                    .padding()
                StarLink(name: "Red Dwarf")
                    .foregroundColor(.red)
            }
            NavigationView {
                NavigationLink("Travel to Blue Star") {
                    Image("blue star")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .padding()
                NavigationLink("Travel to Red Dwarf") {
                    Image("red dwarf")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                foregroundColor(.red)
            }
            .navigationBarTitle("Intergalatic Travel", displayMode: .inline)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct StarLink: View {
        let name: String
        var body: some View {
            NavigationLink("Travel to \(name)") {
                Image(name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        }
    }
}
