//
//  TabBar.swift
//  ModernWeatherUI
//
//  Created by ANDELA on 24/05/2025.
//

import SwiftUI

struct TabBar: View {
  var action: () -> Void
  
    var body: some View {
      ZStack {
        Arc()
          .fill(Color.tabBarBorderColor)
          .frame(height: 88, alignment: .bottom)
          .overlay {
            Arc()
              .stroke(Color.tabBarBorder, lineWidth: 0.5)
          }
          
        // MARK: Tab Items
        HStack {
          // MARK: Expand Button
          Button {
            action()
          }label: {
            Image(systemName: "mappin.and.ellipse")
              .frame(width: 44, height: 44)
          }
          Spacer()
          // MARK: Navigation Button
          NavigationLink {
            
          } label: {
            Image(systemName: "list.star")
              .frame(width: 44, height: 44)
          }
        }
        .font(.title2)
        .foregroundStyle(.white)
        .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        CenterTrapezoidIcon()
          .fill(Color.mainCenterBtnColor)
          .frame(width: 258, height: 88, alignment: .bottom)
          .overlay {
            RoundedRectangle(cornerRadius: 32)
              .frame(width: 64, height: 64)
              .overlay {
                CrossIcon()
                  .fill(Color.weatherWidgetBackground)
                  .frame(width:44, height: 44)
              }
          }
      }
      .frame(maxHeight: .infinity, alignment: .bottom)
      .ignoresSafeArea()
    }
}

#Preview {
  TabBar(action: {})
    .preferredColorScheme(.dark)
}
