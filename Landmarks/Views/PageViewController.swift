//
//  PageViewController.swift
//  Landmarks
//
//  Created by NuGelaliee on 12/11/20.
//

import Foundation
import SwiftUI

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    
    var pages: [Page]
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let pageController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageController.dataSource = context.coordinator
        return pageController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        guard let pageController = uiViewController as? UIPageViewController else {
            fatalError("current controller is not pageController")
        }
        let root = context.coordinator.childs[0]
        pageController.setViewControllers([root], direction: .forward, animated: true)
    }
    
    
    class Coordinator: NSObject, UIPageViewControllerDataSource {
        var parent: PageViewController
        var childs: [UIViewController]
        init(_ pageController: PageViewController) {
            parent = pageController
            childs = parent.pages.map { UIHostingController(rootView: $0) }
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let index = childs.firstIndex(of: viewController) else {
                return nil
            }
            
            if index == 0 {
                return childs.last
            }
            
            return childs[index - 1]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let index = childs.firstIndex(of: viewController) else {
                return nil
            }
            if index + 1 == childs.count {
                return childs.first
            }
            return childs[index + 1]
        }
        
    }
}
