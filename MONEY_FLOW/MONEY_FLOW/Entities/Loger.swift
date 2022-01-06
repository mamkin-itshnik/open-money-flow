//
//  Loger.swift
//  MONEY_FLOW
//
//  Created by Евгений on 06.01.2022.
//

import Foundation

fileprivate var logger: LogWriterProtocol = ConsoleLogger()

fileprivate protocol LogWriterProtocol{
    func writeLog(_ str: String) ->()
}

fileprivate class ConsoleLogger: LogWriterProtocol{
    func writeLog(_ str: String) {
        print(str)
    }
}
//TODO: NetworkLogger
func writeLog(_ str: String){
    DispatchQueue.main.async {
        logger.writeLog(str)
    }
}
