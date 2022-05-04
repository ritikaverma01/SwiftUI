//
//  SixthView.swift
//  TabBasedApplication
//
//  Created by Ritika Verma on 25/04/22.
//

import SwiftUI

struct SixthView: View {
    
    @State private var name: String = String()
    @State private var username: String = String()
    @State private var password: String = String()
    
    var body: some View {
        
        VStack {
            VStack {
                TextField("username", text: $name)
                    .frame(height: 50).border(.purple, width: 1)
                Button(action: {
                    debugPrint("hello \(self.name)")
                }, label: {
                    Text("Login")
                }).disabled(name.count < 5).buttonStyle(.bordered)
            }
            Spacer()
            VStack {
                Text("LOGIN")
                    .font(.title)
                    .foregroundColor(.purple)
                    .padding()
                TextField("username", text: $username)
                    .frame(height: 50)
                    .cornerRadius(5)
                    .border(.tint, width: 1)
                    .padding()
                SecureField("password", text: $password)
                    .frame(height: 50)
                    .cornerRadius(5)
                    .border(.tint, width: 1)
                    .padding()

                HStack {
                    Button(action: {
                        debugPrint("Login tapped")
                    }, label: {
                        Text("Login")
                    })
                    Spacer()
                    Button(action: {
                        debugPrint("Forget password tapped")
                    }, label: {
                        Text("Forget password")
                    })
                }.padding()
            }

        }.padding()
    }
}

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
    }
}
