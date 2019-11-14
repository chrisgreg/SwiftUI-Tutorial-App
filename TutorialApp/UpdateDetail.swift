//
//  UpdateDetail.swift
//  TutorialApp
//
//  Created by Christopher Gregori on 03/11/2019.
//  Copyright © 2019 Chris Gregori. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var title = "Swift UI"
    var text = "Loading..."
    var image = "Illustration1"
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            
            Text(text)
                .lineLimit(nil)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer()
        }
        .padding(30.0)
        
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
