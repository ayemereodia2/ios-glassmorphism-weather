//
//  HomeView.swift
//  ModernWeatherUI
//
//  Created by ANDELA on 24/05/2025.
//

import SwiftUI
import BottomSheet


enum BottomSheetPosition: CGFloat, CaseIterable {
  case top = 0.83 // 703/844
  case middle = 0.385 // 325/844
}

struct HomeView: View {
  @State var bottomSheetPosition:BottomSheetPosition = .middle
  @State var bottomSheetTranslation:CGFloat = BottomSheetPosition.middle.rawValue
  @State var hasDragged:Bool = false
  
  // MARK: Prorated value between 0 and 1 for animation purposes
  var bottomSheetTranslationProrated:CGFloat {
    (bottomSheetTranslation - BottomSheetPosition.middle.rawValue) / (BottomSheetPosition.top.rawValue - BottomSheetPosition.middle.rawValue)
  }
  
    var body: some View {
      NavigationStack {
        GeometryReader  { proxy in
          let screenHeight = proxy.size.height + proxy.safeAreaInsets.top + proxy.safeAreaInsets.bottom
          let imageOffset = screenHeight + 36
          ZStack {
            // MARK: Background Color
            Color.background
              .ignoresSafeArea()
            
            // MARK: Background Image
            Image("Background")
              .resizable()
              .ignoresSafeArea()
              .offset(y: -bottomSheetTranslationProrated * imageOffset)
            
            // MARK: House Image
            Image("House")
              .frame(maxHeight: .infinity, alignment: .top)
              .padding(.top, 257)
              .offset(y: -bottomSheetTranslationProrated * imageOffset)
            
            // MARK: Current Weather
            VStack(spacing: -10 * (1 - bottomSheetTranslationProrated)) {
              Text("Montreal")
                .font(.largeTitle)
              VStack {
                Text(attributedString)
                
                Text("H:24° L:18°")
                  .font(.title3.weight(.semibold))
                  .opacity(1 - bottomSheetTranslationProrated)
              }
              
              Spacer()
            }
            .padding(.top, 51)
            .offset(y: -bottomSheetTranslationProrated * 46)
            // MARK: BottomSheet
            
            BottomSheetView(position: $bottomSheetPosition){
              
            }
            content: {
              ForcastView(bottomSheetTranslatedProrated: bottomSheetTranslationProrated)
            }
            .onBottomSheetDrag { translation in
              bottomSheetTranslation = translation / screenHeight
              withAnimation(.easeInOut) {
                if bottomSheetPosition == BottomSheetPosition.top {
                  hasDragged = true
                } else {
                  hasDragged = false
                }
              }
              
            }
            // MARK: Tab Bar
            TabBar(action: {
              bottomSheetPosition = .top
            })
            .offset(y: bottomSheetTranslationProrated * 115)
            
            
          }
          .toolbar(.hidden)
        }
        
      }

    }
    
  // MARK: Attributed Strings
  private var attributedString:AttributedString {
    var string = AttributedString("19°" + (hasDragged ? " | " : "\n ") + "Mostly Clear")
    if let temp = string.range(of: "19°") {
      string[temp].font = .system(size: (96 - (bottomSheetTranslationProrated * (96 - 20))), weight:  hasDragged ? .semibold : .thin)
      string[temp].foregroundColor =  hasDragged ? .secondary : .primary
    }
    
    if let pipe = string.range(of: " | ") {
      string[pipe].font = .title3.weight(.semibold)
      string[pipe].foregroundColor = .secondary.opacity(bottomSheetTranslationProrated)
    }
    
    if let weatherTemp = string.range(of: "Mostly Clear") {
      string[weatherTemp].font = .title3.weight(.semibold)
      string[weatherTemp].foregroundColor = .secondary
    }
    
    return string
  }
}

#Preview {
    HomeView()
    .preferredColorScheme(.dark)
}
