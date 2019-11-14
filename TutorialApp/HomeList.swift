//
//  HomeList.swift
//  TutorialApp
//
//  Created by Christopher Gregori on 03/11/2019.
//  Copyright © 2019 Chris Gregori. All rights reserved.
//

import SwiftUI

struct HomeList: View {
    @State var showContent = false
    
    var body: some View {
        VStack {
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Courses")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text("22 courses")
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.leading, 70.0)
            .padding(.bottom, 40.0)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(coursesData) { item in
                        Button(action: { self.showContent.toggle() }) {
                            CourseView(
                                title: item.title,
                                image: item.image,
                                color: item.color,
                                shadowColor: item.shadowColor)
                                .sheet(isPresented: self.$showContent,
                                       content: { ContentView() }
                            )
                        }
                    }
                }
                .padding(.leading, 40)
                Spacer()
            }
        }
        .padding(.top, 78.0)
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}

struct CourseView: View {
    var title = "Build an app"
    var image = "Illustration1"
    var color = Color("background3")
    var shadowColor = Color("backgroundShadow3")
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(20)
                .lineLimit(4)
                .padding(.trailing, 30)
            Spacer()
            Image(image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 246, height: 150)
                .padding(.bottom, 30)
        }
        .background(color)
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
    }
}

struct Course : Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var color : Color
    var shadowColor : Color
}

let coursesData = [
    Course(
        title: "Build an app with SwiftUI",
        image: "Illustration1",
        color: Color("background3"),
        shadowColor: Color("backgroundShadow3")
    ),
    Course(
        title: "Design Course",
        image: "Illustration2",
        color: Color("background4"),
        shadowColor: Color("backgroundShadow4")
    )
]

var courses = coursesData
