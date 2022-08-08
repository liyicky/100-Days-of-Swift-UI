//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by Jason Cheladyn on 2022/08/08.
//

import SwiftUI

struct FilteredList: View {
    
    @FetchRequest var fetchRequest: FetchedResults<Singer>
    
    
    init(predicate: String, filter: String) {
        _fetchRequest = FetchRequest<Singer>(sortDescriptors: [], predicate: NSPredicate(format: "\(predicate) %@", filter))
    }

    
    var body: some View {
        List(fetchRequest, id: \.self) { singer in
            Text("\(singer.wrappedFirstname) \(singer.wrappedLastname)")
            
        }
    }
}
