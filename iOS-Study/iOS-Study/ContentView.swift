//
//  ContentView.swift
//  iOS-Study
//
//  Created by andev on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    @State var CurrentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $CurrentTab) {
                Text("홈뷰")
                    .tag(Tab.home)
                Text("게시판뷰")
                    .tag(Tab.forum)
                Text("스터디뷰")
                    .tag(Tab.study)
                Text("프로필뷰")
                    .tag(Tab.profile)
            }
        }
        CustomTabView(currentTab: $CurrentTab)
    }
}

#Preview {
    ContentView()
}
