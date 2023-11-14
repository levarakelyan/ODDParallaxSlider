//
//  ODDParallaxSliderConfiguration.swift
//  AdaptiveSlider
//
//  Created by Levon Arakelyan on 12.11.23.
//

import SwiftUI

struct ODDParallaxSliderConfiguration {
    var parallaxSpeed: CGFloat
    var pageControlTopSpacing: CGFloat?
    var sliderInteritemSpacing: CGFloat
    var sliderEdgesHorizontalPadding: CGFloat
    var scrollIndicatorVisibility: ScrollIndicatorVisibility
    var parallaxAndSliderVerticalSpacing: CGFloat
    var sliderHasParallaxEffect: Bool
    var sliderClipShape: RoundedRectangle
}

extension ODDParallaxSliderConfiguration {
    static var preview: ODDParallaxSliderConfiguration {
        .init(parallaxSpeed: 0.5,
              pageControlTopSpacing: 30,
              sliderInteritemSpacing: 20,
              sliderEdgesHorizontalPadding: 10,
              scrollIndicatorVisibility: .hidden,
              parallaxAndSliderVerticalSpacing: 30,
              sliderHasParallaxEffect: false,
              sliderClipShape: RoundedRectangle(cornerRadius: 20))
    }

    var sliderHorizontalEdgesVisibleSize: CGFloat {
        sliderInteritemSpacing + sliderEdgesHorizontalPadding
    }
}
