//
//  ODDPageControl.swift
//  AdaptiveSlider
//
//  Created by Levon Arakelyan on 12.11.23.
//

import SwiftUI

struct ODDPageControl: UIViewRepresentable {
    var pagesCount: Int
    var currentPage: Int
    var onPageChange: (Int) -> ()
    
    func makeCoordinator() -> Coordinator {
        Coordinator(onPageChange: onPageChange)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = pagesCount
        control.pageIndicatorTintColor = UIColor.lightGray
        control.currentPageIndicatorTintColor = UIColor.darkGray
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.onValueChanged(control:)),
            for: .valueChanged)
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
        uiView.numberOfPages = pagesCount
    }
    
    class Coordinator: NSObject {
        var onPageChange: (Int) -> ()
        
        init(onPageChange: @escaping (Int) -> ()) {
            self.onPageChange = onPageChange
        }
        
        @objc func onValueChanged(control: UIPageControl) {
            onPageChange(control.currentPage)
        }
    }
}
