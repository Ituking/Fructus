//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by 大久保樹 on 2022/09/05.
//

import SwiftUI

struct FruitHeaderView: View {
    //: MARK - PROPERTIES
    
    var fruit: Fruit
    
    //: MARK - BODY
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
        } //: ZSTACK
        .frame(height: 440)
    }
}

//:MARK - PREVIEW

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
