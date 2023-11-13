//
//  ODDParallaxSliderItem.swift
//  AdaptiveSlider
//
//  Created by Levon Arakelyan on 12.11.23.
//

import SwiftUI

class ODDParallaxSliderItem: Identifiable {
    private(set) var id = UUID()
}

extension ODDParallaxSliderItem {
    static var preview: [ODDParallaxSliderItem] {
        [.init(), .init(), .init()]
    }
}
