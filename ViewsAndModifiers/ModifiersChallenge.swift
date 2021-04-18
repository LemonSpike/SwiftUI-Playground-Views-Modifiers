//
//  OverflowRainbowModifier.swift
//  ViewsAndModifiers
//
//  Created by Pranav Kasetti on 05/04/2021.
//

import SwiftUI

struct OverflowRainbowModifier: ViewModifier {

  let rainbowColors: [Color] = [Color.purple, Color.pink, Color.blue, Color.yellow, Color.orange, Color.red]
  let radius: CGFloat

  init(radius: CGFloat) {
    self.radius = radius
  }

  func body(content: Content) -> some View {
    content
      .background(RadialGradient(gradient: Gradient(colors: rainbowColors), center: .bottomTrailing, startRadius: 0, endRadius: radius))
  }
}

extension View {
  func rainbowify(size: CGSize) -> some View {
    let radius = min(size.width, size.height)
    return self.modifier(OverflowRainbowModifier(radius: radius))
  }
}

struct RainbowView: View {

  let size: CGSize

  init(size: CGSize) {
    self.size = size
  }

  var body: some View {
    GeometryReader { proxy in
      Rectangle()
        .foregroundColor(.clear)
        .frame(width: size.width,
               height: size.height,
               alignment: .center)
        .rainbowify(size: proxy.size)
    }.frame(width: size.width, height: size.height, alignment: .center)
  }
}

struct ModifiersChallenge_Previews: PreviewProvider {
  static var previews: some View {
    RainbowView(size: .init(width: 300, height: 400))
  }
}
