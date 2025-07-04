//
//  Extensions.swift
//  ModernWeatherUI
//
//  Created by ANDELA on 24/05/2025.
//

import SwiftUI

extension Color {
    static let background = LinearGradient(gradient: Gradient(colors: [Color("Background 1"), Color("Background 2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
  
  static let mainCenterBtnColor = LinearGradient(gradient: Gradient(colors: [Color("CenterIcon 1"), Color("CenterIcon 2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
  
    static let bottomSheetBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(0.26), Color("Background 2").opacity(0.26)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let navBarBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(0.1), Color("Background 2").opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let tabBarBackground = LinearGradient(gradient: Gradient(colors: [Color("Tab Bar Background 1").opacity(0.26), Color("Tab Bar Background 2").opacity(0.26)]), startPoint: .top, endPoint: .bottom)
    static let weatherWidgetBackground = LinearGradient(gradient: Gradient(colors: [Color("Weather Widget Background 1"), Color("Weather Widget Background 2")]), startPoint: .leading, endPoint: .trailing)
    static let bottomSheetBorderMiddle = LinearGradient(gradient: Gradient(stops: [.init(color: .white, location: 0), .init(color: .clear, location: 0.2)]), startPoint: .top, endPoint: .bottom)
  
    static let bottomSheetBorderTop = LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .white.opacity(0.5), .white.opacity(0)]), startPoint: .leading, endPoint: .trailing)
    static let underline = LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .white, .white.opacity(0)]), startPoint: .leading, endPoint: .trailing)
  
    static let tabBarBorderColor = Color("Tab Bar Border").opacity(0.5)
    static let forecastCardBackgroundColor = Color("Forecast Card Background")
    static let probabilityTextColor = Color("Probability Text")
}
 
extension View {
  func backgroundBlur(radius: CGFloat = 3, opaque:Bool = false) -> some View {
    return self
      .background(Blur(radius: radius, opaque: opaque))
  }
}

extension View {
  func innerShadow<S: Shape, SS: ShapeStyle>(shape: S, color: SS, lineWidth: CGFloat = 1, offSetX:CGFloat = 0, offSetY:CGFloat = 0, blur:CGFloat = 4, blendMode: BlendMode = .normal, opacity:Double = 1) -> some View {
    self
      .overlay {
        // MARK: Inner Shadow
        shape
          .stroke(color, lineWidth: lineWidth)
          .blendMode(blendMode)
          .blur(radius: blur)
          .mask(shape)
          .opacity(opacity)
      }
  }
}
