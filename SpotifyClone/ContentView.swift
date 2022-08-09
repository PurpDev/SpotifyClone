//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Augustin Diabira on 09/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                
                Image("spotify").resizable().frame(width: 180, height: 80).padding()
             
                
                VStack {
                    Text("We Play the music.").font(.system(size: 32)).fontWeight(.heavy)
                    Text("You enjoy it. Deal ?").font(.system(size: 32)).fontWeight(.heavy)
                }.padding(.bottom, 44)
              
                VStack {
                    
                    Button {
                        
                    } label: {
                        Text("SIGN UP").frame(width: 260).font(.headline)
                    }.padding().foregroundColor(.white)  .background(Color.green)
                        .background(.ultraThickMaterial, in: RoundedRectangle( cornerRadius: 25)).frame(width: 300)

                    
                      
                        
                        NavigationLink {
                            SpotifyLogPage()
                        } label: {
                            Text("LOG IN").frame(width: 260).padding().foregroundColor(.black) .font(.headline) .background(Color.white)
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 25)).overlay(Capsule().stroke(Color.black)).frame(width: 300).padding()
                        }


                    

                    
                    
                }.padding(.bottom, 111)
                
                Text("By Clicking on sign up. You agree to Spotify's Terms and Conditions of use").padding().font(.subheadline)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
