//
//  HomeViewModel.swift
//  ModernWeatherUI
//
//  Created by ANDELA on 24/05/2025.
//

import BottomSheet
import Combine

class HomeViewModel: ObservableObject {
  @Published var isPresented = true
  @Published var bottomSheetPosition: BottomSheetPosition = .middle
}
