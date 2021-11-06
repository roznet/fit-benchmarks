//
//  main.swift
//  fitsdkobjc
//
//  Created by Brice Rosenzweig on 06/11/2021.
//

import Foundation
import ArgumentParser
import ObjcFIT
import SwiftFIT

struct fitparser : ParsableCommand {
    @Argument(help: "The file to parse")
    var file: String

    func run() throws{
        let start : Date = Date()
        let filename = self.file

        let decoder = FITDecoder()
        let listener = FITListener()
        decoder.mesgDelegate = listener
        decoder.decodeFile(filename)
        
        let messages = listener.messages;
        
        print( "record: \(messages.getRecordMesgs().count)" )
        print( "lap: \(messages.getLapMesgs().count)" )

        let elapsed = Date().timeIntervalSince(start)
        let f = URL(fileURLWithPath: self.file).lastPathComponent

        print( String(format: "| objc/cpp | fitsdkobjc | %@ | %.3f seconds | [Official objc SDK](https://developer.garmin.com/fit/example-projects/objc/) | ", f, elapsed) )
    }
}

fitparser.main()


print("Hello, World!")

