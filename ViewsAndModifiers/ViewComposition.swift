//
//  ViewComposition.swift
//  ViewsAndModifiers
//
//  Created by Pranav Kasetti on 03/04/2021.
//

import SwiftUI

struct ViewComposition: View {
  var body: some View {
    VStack(spacing: 10) {
      CapsuleText(text: "First")
        .foregroundColor(.white)
      CapsuleText(text: "Second")
        .foregroundColor(.yellow)
    }
  }
}

struct CapsuleText: View {
  var text: String

  var body: some View {
    Text(text)
      .font(.largeTitle)
      .padding()
      //.foregroundColor(.white) Commented out to enable override in call site
      .background(Color.blue)
      .clipShape(Capsule())
  }
}

struct ViewComposition_Previews: PreviewProvider {
  static var previews: some View {
    ViewComposition()
  }
}
