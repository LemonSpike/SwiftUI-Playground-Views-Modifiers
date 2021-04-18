//
//  EnvironmentModifiers.swift
//  ViewsAndModifiers
//
//  Created by Pranav Kasetti on 03/04/2021.
//

import SwiftUI

struct EnvironmentModifiers: View {
  var body: some View {
    VStack {
      Text("Gryffindor")
        .font(.largeTitle) // Works
        .blur(radius: 0) // Doesn't work
      Text("Hufflepuff")
      Text("Ravenclaw")
      Text("Slytherin")
    }
    .font(.title)
    .blur(radius: 3)
  }
}

struct EnvironmentModifiers_Previews: PreviewProvider {
  static var previews: some View {
    EnvironmentModifiers()
  }
}
