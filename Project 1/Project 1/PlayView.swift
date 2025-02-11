//
//  PlayView.swift
//  Project 1
//
//  Created by Jiyoon Moon on 2/6/25.
//

import SwiftUI

struct PlayView: View {
    @State private var time: Double = 0
    @State private var isFilled = false
    @State private var play = false
    var body: some View {
        ZStack{
            VStack {
                LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom)
            }
            .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "chevron.down")
                    Spacer()
                    Text("Blonde")
                    Spacer()
                    Image(systemName: "ellipsis")
                }
                Spacer()
                Image("spotify album image")
                    .resizable()
                    .scaledToFit()
                Spacer()
                HStack{
                    VStack(alignment: .leading) {
                        Text("Nikes")
                            .fontWeight(.bold)
                            .font(.title)
                        Text("Frank Ocean")
                    }
                    .foregroundStyle(.white)
                    Spacer()
                    Image(systemName: isFilled ? "heart.fill" : "heart")
                                .font(.title)
                                .foregroundColor(.white)
                                .onTapGesture {
                                    isFilled.toggle()
                                }
                }
                VStack(spacing: 10) {
                    Slider(value: $time, in: 0...3.04)
                    HStack{
                        Text("\(time, specifier: "%.1f")")
                        Spacer()
                        Text("\(time - 3.04, specifier: "%.1f")")
                        }                            .foregroundStyle(.white)
                HStack{
                    Image(systemName: "shuffle")
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .font(.title)
                    Image(systemName: play ? "play.circle.fill" : "pause.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .onTapGesture {
                                    play.toggle()}
                    Image(systemName: "forward.end.fill")
                        .font(.title)
                    Spacer()
                    Image(systemName: "repeat")
                }
                .foregroundStyle(.white)
                HStack{
                    Image(systemName: "tv.and.hifispeaker.fill")
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                    Image(systemName: "list.bullet")
                    }
                .foregroundStyle(.white)
                .font(.title3)
                }
                .padding(10)
            }
            .padding()
                }

            }
        }

#Preview {
    PlayView()
}
