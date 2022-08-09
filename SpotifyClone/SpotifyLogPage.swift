//
//  SpotifyLogPage.swift
//  SpotifyClone
//
//  Created by Augustin Diabira on 09/08/2022.
//

import SwiftUI

struct SpotifyLogPage: View {
    @State var name:String = ""
    @State var password:String = ""
    var body: some View {
        VStack {
            Image("spotify").resizable().frame(width: 180, height: 80).padding()
         
            TextField("Email address or username", text: $name).frame(width: 260).padding().foregroundColor(.black) .font(.headline) .background(Color.white)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 25)).overlay(Capsule().stroke(Color.black)).frame(width: 300)
            SecureField("Password", text: $password).frame(width: 260).padding().foregroundColor(.black) .font(.headline) .background(Color.white)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 25)).overlay(Capsule().stroke(Color.black)).frame(width: 300).padding()
            
            Button {
                
            } label: {
                Text("LOG IN").frame(width: 260).padding().foregroundColor(.white) .font(.headline) .background(Color.green)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 25)).frame(width: 300).padding()

            }
            
            Text("or continue with")
            
            HStack {
                Image("facebookf").resizable().frame(width: 65, height: 65)
                Image("apple").resizable().frame(width: 65, height: 65)
            }
            
            Text("Forgot your password ?").font(.headline).padding(.top)

        }.navigationBarBackButtonHidden(true)
    }
}

struct SpotifyLogPage_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyLogPage()
    }
}
