//
//  main.swift
//  fitsdkswift
//
//  Created by Angus Cochran on 5/10/25.
//

import Foundation
import ArgumentParser
import FITSwiftSDK

struct fitparser : ParsableCommand {
    @Argument(help: "The file to parse")
    var file: String
    
    func run() throws {
        let start : Date = Date()
        let filename = self.file
        
        let fileURL = URL(fileURLWithPath: filename)
        let fileData = try Data(contentsOf: fileURL)
        let stream = FITSwiftSDK.InputStream(data: fileData)
        
        let decoder = Decoder(stream: stream)
        let fitListener = FitListener()
        decoder.addMesgListener(fitListener)
        
        try decoder.read()
        
        print( "record: \(fitListener.fitMessages.recordMesgs.count)" )
        print( "lap: \(fitListener.fitMessages.lapMesgs.count)" )
        
        let elapsed = Date().timeIntervalSince(start)
        let f = URL(fileURLWithPath: self.file).lastPathComponent

        print( String(format: "| swift | fitsdkswift | %@ | %.3f seconds | [Official swift SDK](https://github.com/garmin/fit-swift-sdk) | ", f, elapsed) )
    }
}

fitparser.main()
