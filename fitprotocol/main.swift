//
//  main.swift
//  fitcompare
//
//  Created by Brice Rosenzweig on 06/12/2020.
//

import Foundation
import ArgumentParser
import FitDataProtocol

struct FitCompare: ParsableCommand {
    @Argument(help: "The file to parse")
    var file: String

    func run() throws{
        let start : Date = Date()
        
        let fileUrl = URL(fileURLWithPath: self.file)
        let fileData = try? Data(contentsOf: fileUrl)

        var records : [RecordMessage] = []
        var sports : [ SportMessage] = []
        var activity : [ ActivityMessage ] = []
        var session : [ SessionMessage ] = []
        var laps : [ LapMessage ] = []
        
        if let fileData = fileData {
            var decoder = FitFileDecoder(crcCheckingStrategy: .throws)

            do {

                try decoder.decode(data: fileData,
                               messages: FitFileDecoder.defaultMessages,
                    decoded: { (message: FitMessage) in

                        if let message = message as? RecordMessage {
                            records.append(message)
                        }

                        if let message = message as? SportMessage {
                            sports.append(message)
                        }

                        if let message = message as? ActivityMessage {
                            activity.append(message)
                        }
                        if let message = message as? SessionMessage {
                            session.append(message)
                        }
                        if let message = message as? LapMessage {
                            laps.append(message)
                        }

                })

            } catch {
                print(error)
            }
        }
        print( "lap: \(laps.count)")
        print( "record: \(records.count)")
        let elapsed = Date().timeIntervalSince(start)
        let f = URL(fileURLWithPath: self.file).lastPathComponent
        print( String(format: "| swift | fitprotocol | %@ | %.3f seconds | [FitDataProtocol](https://github.com/FitnessKit/FitDataProtocol) | ", f, elapsed) )
    }
}

FitCompare.main()
