//
//  ContentView.swift
//  EnvObjectProject
//
//  Created by Andreas Antonsson on 2023-11-26.
//

import SwiftUI

struct User {
    let fullName: String
    let email: String
    let adress: String
    
    var initials: String? {
        let formatter = PersonNameComponentsFormatter()
        guard let components = formatter.personNameComponents(from: fullName) else {
            return nil }
        formatter.style = .abbreviated
        return formatter.string(from: components)
    }
}

class ContentViewModel: ObservableObject {
    @Published var user: User // then recive/read the value in ContentView
    
    init() {
        self.user = User(
            fullName: "John Doe",
            email: "doe.john@gmail.com",
            adress: "123 Main St")
    }
}

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    private var user: User {
        return viewModel.user
    }
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    EditProfileView()
                } label: {
                    HStack {
                        Text(user.initials ?? "")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 48, height: 48)
                            .background(Color(.systemGray4))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(user.fullName)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text(user.email)
                                .font(.footnote)
                                .foregroundStyle(.gray)
                                .padding(.leading, 2)
                                //.tint(.gray)
                            
                            Text(user.adress)
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
