//
//  ContentView.swift
//  ChatMessage
//
//  Created by Benji Loya on 26/02/2023.
//

import SwiftUI
import SDWebImageSwiftUI


struct ReusableProfileContent: View {
    var user: User
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack{
                HStack(spacing: 12){
                    WebImage(url: user.userProfileURL).placeholder{
//                        MARK: Placeholder image
                        Image("nullProfile")
                            .resizable()
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text(user.username)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("user status")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .lineLimit(3)
                        
                    }
                    .hAlign(.leading)
                }
                .padding(.horizontal)
                
                Text("About")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .hAlign(.leading)
                    .padding(.vertical, 15)
                    .padding(.horizontal)
            }
        }
    }
}
