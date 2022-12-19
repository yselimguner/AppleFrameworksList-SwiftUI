//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Yavuz Güner on 18.12.2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework :Framework
    @Binding var isShowingDetailView:Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            Spacer()

            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()

            Button{
                isShowingSafariView = true
            }label: {
                //AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }.buttonStyle(.borderedProminent)
                .controlSize(.large)
                //.foregroundColor(.yellow)
                .buttonBorderShape(.roundedRectangle(radius: 20))
                .tint(.gray)
            
            

            //.sheet yerine .fullScreenCover'da yazabiliriz tam ekran olur.
        }.sheet(isPresented: $isShowingSafariView)  {
            SafariView(url: (URL(string: framework.urlString) ?? URL(string: "apple.com"))!)
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
