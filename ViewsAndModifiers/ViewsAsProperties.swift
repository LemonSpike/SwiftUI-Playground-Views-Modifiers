//
//  ViewsAsProperties.swift
//  ViewsAndModifiers
//
//  Created by Pranav Kasetti on 03/04/2021.
//

import SwiftUI

struct ViewsAsProperties: View {

  let motto1 = Text("Draco dormiens")
  let motto2 = Text("nunquam titillandus")

  var body: some View {
    VStack {
      motto1
        .foregroundColor(.red)
      motto2
        .foregroundColor(.blue)
    }
  }
}

struct ViewsAsProperties_Previews: PreviewProvider {
  static var previews: some View {
    ViewsAsProperties()
  }
}
