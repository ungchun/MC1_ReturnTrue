//
//  SwiftUIView 2.swift
//  
//
//  Created by 신정연 on 2023/03/29.
//

import SwiftUI

struct ShoppingView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            HStack{
                SearchBar(text: $searchText)
                    .padding(.leading, 25)
                    .padding(.trailing, 10)
                Image(systemName: "bookmark")
                    .font(.system(size: 25, weight: .light))
                    .imageScale(.medium)
                    .frame(width: 40, height: 40)
                NavigationLink(destination: CartView()){
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .light))
                        .imageScale(.medium)
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 20)
                }
            }
            //뷰페이저 -> 일단은 이미지로 붙여요
            HStack{
                Image("shopping")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView()
    }
}
