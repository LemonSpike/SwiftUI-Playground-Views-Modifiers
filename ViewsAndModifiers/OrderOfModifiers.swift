//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Pranav Kasetti on 03/04/2021.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
    Text("Hello World")
      .background(Color.red)
      .frame(maxWidth: 200, maxHeight: 200)
      .edgesIgnoringSafeArea(.all)
      Text("Hello World")
        .padding()
        .background(Color.red)
        .background(Color.blue)
        .padding()
        .background(Color.green)
        .padding()
        .background(Color.yellow)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
      ContentView().edgesIgnoringSafeArea(.all)
        .environment(\.colorScheme, .light)
    }
  }
}
