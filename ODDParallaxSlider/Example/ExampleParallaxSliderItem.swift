//
//  ExampleParallaxSliderItem.swift
//  ODDParallaxSlider
//
//  Created by Levon Arakelyan on 12.11.23.
//

import SwiftUI

class ExampleParallaxSliderItem: ODDParallaxSliderItem {
    var parallaxTitle: LocalizedStringKey
    var parallaxImage: Image
    var sliderImage: Image
    
    init(parallaxTitle: LocalizedStringKey, parallaxImage: Image, sliderImage: Image) {
        self.parallaxTitle = parallaxTitle
        self.parallaxImage = parallaxImage
        self.sliderImage = sliderImage
    }
}

extension ExampleParallaxSliderItem {
    static var introPreview: [ExampleParallaxSliderItem] {
        [ExampleParallaxSliderItem(parallaxTitle: "ODD&",
                                   parallaxImage: .init(systemName: "apple.logo"),
                                   sliderImage:  .init("oddand.logo.transparent")),
         ExampleParallaxSliderItem(parallaxTitle: "Explore",
                                   parallaxImage: .init(systemName: "map"),
                                   sliderImage:  .init("odd.slider.2")),
         ExampleParallaxSliderItem(parallaxTitle: "Wonderful",
                                   parallaxImage: .init(systemName: "cloud.rainbow.half"),
                                   sliderImage:  .init("odd.slider.3")),
         ExampleParallaxSliderItem(parallaxTitle: "Coding",
                                   parallaxImage: .init(systemName: "sun.dust"),
                                   sliderImage:  .init("odd.slider.4"))
        ]
    }
}
