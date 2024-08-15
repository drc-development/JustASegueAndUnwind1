//
//  ContentView.swift
//  JustASegueAndUnwind1
//
//  Created by Daryl Cox on 08/15/2024.
//  Copyright © JustMacApps 2023-2024. All rights reserved.
//

import SwiftUI

struct ContentView: View 
{

    struct ClassInfo
    {
        
        static let sClsId        = "ContentView"
        static let sClsVers      = "v1.0103"
        static let sClsDisp      = sClsId+"(.swift).("+sClsVers+"):"
        static let sClsCopyRight = "Copyright (C) JustMacApps 2023-2024. All Rights Reserved."
        static let bClsTrace     = true
        static let bClsFileLog   = true
        
    }

    // App Data field(s):
    
    @State private var cContentViewRefreshButtonPresses:Int = 0
    
    var body: some View 
    {

        let _ = xcgLogMsg("\(ClassInfo.sClsDisp):body(some View) \(ClassInfo.sClsCopyRight)...")

//        VStack 
//        {
//
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//
//            Text("Hello, world!")
//
//        }
//        .padding()

        NavigationStack
        {

            Spacer()

            VStack(alignment:.center) 
            {
                
                Spacer()

                HStack
                {

                    Spacer()

                    Button("Refresh - #(\(self.cContentViewRefreshButtonPresses))...")
                    {

                        self.cContentViewRefreshButtonPresses += 1

                        let _ = xcgLogMsg("\(ClassInfo.sClsDisp)ContentView in Button(Xcode).'Refresh'.#(\(self.cContentViewRefreshButtonPresses))...")

                    }
                    .controlSize(.large)
                    .background(Color(red: 0, green: 0.5, blue: 0.5))
                    .foregroundStyle(.white)
                    .buttonStyle(.borderedProminent)
                    .padding()

                }

                Spacer()
                
                HStack(alignment:.center)
                {

                    Spacer()

                if #available(iOS 17.0, *)
                {

                //  Image(ImageResource(name: "Gfx/AppIcon", bundle: Bundle.main))
                    Image(systemName: "globe.desk.fill")
                        .resizable()
                        .scaledToFit()
                        .containerRelativeFrame(.horizontal)
                            { size, axis in
                                size * 0.10
                            }

                }
                else
                {

                //  Image(ImageResource(name: "Gfx/AppIcon", bundle: Bundle.main))
                    Image(systemName: "globe.desk.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:50, height: 50, alignment:.center)

                }

                    Spacer()

                }
                
                Spacer(minLength: 10)
                
                Text("Welcome to the '\(AppGlobalInfo.sGlobalInfoAppId)' App!")
                    .bold()

                Spacer()
                
                HStack(alignment:.center)
                {
                    
                    Spacer()
                    
                    VStack(alignment:.center)
                    {
                        
                    //  Text("\(ClassInfo.sClsCopyRight)")
                        Text("\(AppGlobalInfo.sGlobalInfoAppCopyRight)")
                            .italic()
                            .controlSize(.mini)
                        
                    }
                    
                    Spacer()
                    
                }

            }
            .navigationTitle("\(AppGlobalInfo.sGlobalInfoAppId)")
            // ------------------------------------------------------------------------------------------------------
            // >>> This does work (the .toolbar() MUST be under a NavigationStack:
            // ------------------------------------------------------------------------------------------------------
            .toolbar
            {

                ToolbarItem(placement:.navigationBarTrailing)
                {

                    NavigationLink(destination: presentSettingsSingleView())
                    {

                        Image(systemName: "gearshape.fill")

                    }
                                                                                                                                                 
                }
          
            }

        }
        
    }

    func presentSettingsSingleView() -> some View
    {

        let sCurrMethod:String = #function
        let sCurrMethodDisp    = "\(ClassInfo.sClsDisp)'"+sCurrMethod+"':"
        
        self.xcgLogMsg("\(sCurrMethodDisp) Invoked...")

        self.xcgLogMsg("\(ClassInfo.sClsDisp)ContentView called by ToolbarItem.NavigationLink(Xcode).'Settings'...")
        
        // Exit:

        self.xcgLogMsg("\(sCurrMethodDisp) Exiting...")

        return EmptyView()
    //  return SettingsSingleView()

    }   // End of func presentSettingsSingleView().
    
    func xcgLogMsg(_ sMessage:String)
    {

    //  self.appDelegate.xcgLogMsg("\(sMessage)")
        print("\(sMessage)")

        return

    }   // End of func xcgLogMsg().

}

#Preview 
{

    ContentView()

}

