//
//  OnboardingView.swift
//  TrainerBag
//
//  Created by Alice Zhang on 7/29/20.
//  Copyright © 2020 Alice Zhang. All rights reserved.
//

import SwiftUI

struct OnboardingView: View {
    var subviews = [
        UIHostingController(rootView: Subview(imageString: "creative")),
        UIHostingController(rootView: Subview(imageString: "friends")),
        UIHostingController(rootView: Subview(imageString: "share")),
        UIHostingController(rootView: Subview(imageString: "creative"))
    ]
    
    @State var currentPageIndex = 0
    
    var titles = ["Make your tea", "Cook your boba", "Pour in your milk","Enjoy your milk tea!"]
    var caption = ["You can use any tea you like", "Follow directions on the label","Adjust sweetness as desired","   "]
    
    var body: some View {
        VStack {
            PageViewController(currentPageIndex: $currentPageIndex, viewControllers: subviews).frame(height: 600)
            Text("Step \(currentPageIndex+1)")
            
            Text(titles[currentPageIndex]).font(.title)
            Text(caption[currentPageIndex]).font(.subheadline).foregroundColor(.gray).frame(width: 200, height: 50, alignment: .leading).lineLimit(nil)
            
            Button(action: {
                if self.currentPageIndex + 1 == self.subviews.count {
                    self.currentPageIndex = 0
                
                } else {
                    self.currentPageIndex += 1
                }
                }) {
                Buttoncontent()
            }
            
        }
    }
}

struct Buttoncontent : View {
    var body: some View {
    Image(systemName:"arrow.right")
        .resizable()
        .foregroundColor(.white)
        .frame(width: 30, height: 30)
        .padding()
        .background(Color.black)
        .cornerRadius(30)
    }
}
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
