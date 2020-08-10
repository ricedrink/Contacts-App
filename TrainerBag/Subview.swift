//
//  Subview.swift
//  TrainerBag
//
//  Created by Alice Zhang on 7/29/20.
//  Copyright © 2020 Alice Zhang. All rights reserved.
//

import SwiftUI

struct Subview: View {
    var imageString: String
    var body: some View {
        Image(imageString)
        .resizable()
            .aspectRatio(contentMode: .fit)
        .clipped()
    }
}

struct Subview_Previews: PreviewProvider {
    static var previews: some View {
        Subview(imageString: "friends")
    }
}
