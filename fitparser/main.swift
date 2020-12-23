//
//  main.swift
//  fitjson
//
//  Created by Brice Rosenzweig on 06/12/2020.
//

import Foundation
import ArgumentParser
import FitFileParser

struct FitJson: ParsableCommand {
    @Argument(help: "The file to parse")
    var file: String

    func run() throws{
        
        let start : Date = Date()
        if let fitfile = FitFile(file: URL(fileURLWithPath: self.file)) {
            let counts = fitfile.countByMessageType()
            for messageType in [ FitMessageType.record, FitMessageType.lap ] {
                if let desc = fitfile.messageTypeDescription(messageType: messageType),
                   let count = counts[ messageType] {
                    print( "\(desc): \(count) messages")
                }
            }
        }
        let elapsed = Date().timeIntervalSince(start)
        let f = URL(fileURLWithPath: self.file).lastPathComponent
        print( String(format: "| swift/c | fitparser | %@ | %.3f seconds | [FitFileParser](https://github.com/roznet/FitFileParser) | ", f, elapsed) )

    }
}

FitJson.main()

