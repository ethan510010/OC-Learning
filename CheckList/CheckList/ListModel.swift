//
//  ListModel.swift
//  CheckList
//
//  Created by EthanLin on 2018/7/21.
//  Copyright © 2018 EthanLin. All rights reserved.
//

import Foundation

class ListModel{
    var listName:String
    var finished:Bool
    init(listName:String,finished:Bool) {
        self.listName = listName
        self.finished = finished
    }
}
