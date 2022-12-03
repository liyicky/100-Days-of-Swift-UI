//
//  FireManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by Jason Cheladyn on 2022/12/03.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
