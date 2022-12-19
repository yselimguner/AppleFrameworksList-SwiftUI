//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Yavuz Güner on 18.12.2022.
//

import SwiftUI

struct FrameworkTitleView:View{
    let framework:Framework
    
    var body:some View{
        HStack{
            Image(uiImage: UIImage(named: framework.imageName)!)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding() //Boşluk bırakmak için daha aralarda
        }
    }
    
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
