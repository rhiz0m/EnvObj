//
//  ContentView.swift
//  EnvObjectProject
//
//  Created by Andreas Antonsson on 2023-11-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    EditProfileView()
                } label: {
                    HStack {
                        Text("JD")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 48, height: 48)
                            .background(Color(.systemGray4))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("John Doe")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("doe.john@gmail.com")
                                .font(.footnote)
                                .foregroundStyle(.gray)
                                .padding(.leading, 2)
                                //.tint(.gray)
                            
                            Text("123 Main St")
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
