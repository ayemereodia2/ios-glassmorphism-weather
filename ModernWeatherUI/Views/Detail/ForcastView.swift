//
//  ForcastView.swift
//  ModernWeatherUI
//
//  Created by ANDELA on 25/05/2025.
//

import SwiftUI

struct ForcastView: View {
  var bottomSheetTranslatedProrated: CGFloat = 1
  @State private var selection = 0
  
    var body: some View {
      ScrollView {
        VStack(spacing: 20) {
          SegmentedControl(selection: $selection)
        }
      }
      .backgroundBlur(radius: 25, opaque: true)
      .background(Color.bottomSheetBackground)
      .clipShape(RoundedRectangle(cornerRadius: 44))
      .innerShadow(shape: RoundedRectangle(cornerRadius: 44), color: Color.bottomSheetBorderMiddle, offSetX: 0, offSetY: 1, blur: 0, blendMode: .overlay, opacity: bottomSheetTranslatedProrated )
      .overlay {
        // MARK: Bottom Sheet Separator
        Divider()
          .blendMode(.overlay)
          .background(Color.bottomSheetBorderTop)
          .frame(maxHeight: .infinity, alignment: .top)
          .clipShape(RoundedRectangle(cornerRadius: 44.0))
      }
      .overlay {
        // MARK: Drag indicator
        RoundedRectangle(cornerRadius: 10)
          .fill(.black).opacity(0.3)
          .frame(width: 45, height: 5)
          .frame(height: 20)
          .frame(maxHeight: .infinity, alignment: .top)
      }
    }
}

#Preview {
    ForcastView()
    .background(Color.background)
    .preferredColorScheme(.dark)
}
