//
//  Blur.swift
//  ModernWeatherUI
//
//  Created by ANDELA on 25/05/2025.
//

import SwiftUI

class UIBackDropView: UIView {
  override class var layerClass: AnyClass {
    NSClassFromString("CABackdropLayer") ?? CALayer.self
  }
}
  
struct BackDrop: UIViewRepresentable {
    func makeUIView(context: Context) -> UIBackDropView {
      UIBackDropView()
    }
    
    func updateUIView(_ uiView: UIBackDropView, context: Context) {    }
  }

struct Blur: View {
  var radius:CGFloat = 3
  var opaque = false
  var body: some View {
    BackDrop()
      .blur(radius: radius, opaque: opaque)
  }
}

#Preview {
    Blur()
}
