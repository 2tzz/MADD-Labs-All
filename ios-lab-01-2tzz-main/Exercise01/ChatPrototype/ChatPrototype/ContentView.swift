//
//  ContentView.swift
//  ChatPrototype
//
//  Created by IM Student on 2025-10-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Knock, Knock!")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                                .fill(Color.yellow)
                )
                
            Image(systemName: "arrowshape.down.circle")
                .imageScale(.large)
                .padding()
            Text("Who's there ?")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                                .fill(Color.teal)
                )

        }
        .padding()
    }
}


#Preview {
    ContentView()
}
