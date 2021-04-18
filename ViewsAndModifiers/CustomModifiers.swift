//
//  CustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by Pranav Kasetti on 03/04/2021.
//

import SwiftUI

struct Title: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .background(Color.blue)
      .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}

extension View {
  func textStyle() -> some View {
    return self
      .modifier(Title())
  }
}

struct CustomModifiers: View {
    var body: some View {
      VStack {
        Text("Hello, World!")
          .textStyle()
        Color.blue
          .frame(width: 300, height: 200)
          .watermarked(with: "Hacking with Swift")
      }
    }
}

struct Watermark: ViewModifier {
  var text: String

  func body(content: Content) -> some View {
    ZStack(alignment: .bottomTrailing) {
      content
      Text(text)
        .font(.caption)
        .foregroundColor(.white)
        .padding(5)
        .background(Color.black)
    }
  }
}

extension View {
  func watermarked(with text: String) -> some View {
    self.modifier(Watermark(text: text))
  }
}


struct CustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiers()
    }
}
