//
//  EditProfileView.swift
//  EnvObjectProject
//
//  Created by Andreas Antonsson on 2023-11-28.
//

import SwiftUI

struct EditProfileView: View {
    var body: some View {
            List {
                Section("Edit Options") {
                    Text("John Doe")
                    
                    NavigationLink {
                        EditEmailView()
                    } label: {
                        Text("doe.john@gmail.com")
                    }
                    
                    NavigationLink {
                        EditAdressView()
                    } label: {
                        Text("123 Main St")
                    }
                }
            }
        }
    }


struct EditEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TextField("Edit your email", text: $email)
                .font(.subheadline)
                .cornerRadius(10)
                .padding(.horizontal, 4)
            Divider()
            
            Spacer()
        }
        .navigationTitle("Edit Email")
      .navigationBarTitleDisplayMode(.inline)
      .padding()
      .toolbar {
          ToolbarItem(placement: .topBarTrailing) {
              Button(action: {
                  dismiss()
              }, label: {
                  Text("Done")
                      .fontWeight(.semibold)
              })
          }
      }
    }
}

struct EditAdressView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            TextField("Edit your adress", text: $email)
                .font(.subheadline)
                .cornerRadius(10)
                .padding(.horizontal, 4)
            Divider()
            
            Spacer()
        }
        .navigationTitle("Edit Adress")
      .navigationBarTitleDisplayMode(.inline)
      .padding()
      .toolbar {
          ToolbarItem(placement: .topBarTrailing) {
              Button(action: {
                  dismiss()
              }, label: {
                  Text("Done")
                      .fontWeight(.semibold)
              })
          }
      }
    }
}

#Preview {
    EditProfileView()
}
