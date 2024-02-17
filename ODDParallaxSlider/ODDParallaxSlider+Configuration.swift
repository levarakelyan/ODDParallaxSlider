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
    let sliderInteritemSpacing: CGFloat
    let sliderEdgesHorizontalPadding: CGFloat
    let scrollIndicatorVisibility: ScrollIndicatorVisibility
    let parallaxAndSliderVerticalSpacing: CGFloat
    let sliderHasParallaxEffect: Bool
    let sliderClipShape: RoundedRectangle
    var allowScalling: Bool = true
}

extension ODDParallaxSliderConfiguration {
    static var preview: ODDParallaxSliderConfiguration {
        .init(parallaxSpeed: 0.5,
              pageControlTopSpacing: 30,
              sliderInteritemSpacing: 20,
              sliderEdgesHorizontalPadding: 10,
              scrollIndicatorVisibility: .hidden,
              parallaxAndSliderVerticalSpacing: 30,
              sliderHasParallaxEffect: true,
              sliderClipShape: RoundedRectangle(cornerRadius: 20))
    }

    var sliderHorizontalEdgesVisibleSize: CGFloat {
        sliderInteritemSpacing + sliderEdgesHorizontalPadding
    }
}
