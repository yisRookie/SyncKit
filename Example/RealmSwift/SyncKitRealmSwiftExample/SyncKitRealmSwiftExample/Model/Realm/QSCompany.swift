//
//  QSCompany.swift
//  SyncKitRealmSwiftExample
//
//  Created by Manuel Entrena on 31/08/2017.
//  Copyright © 2017 Manuel Entrena. All rights reserved.
//

import RealmSwift
import SyncKit
import SmartCodable

class QSCompany: Object, PrimaryKey {
    
    @objc dynamic var name: String? = nil
    @objc dynamic var identifier = ""
    let sortIndex = RealmProperty<Int?>()
    
    let employees = LinkingObjects(fromType: QSEmployee.self, property: "company")
    
    override class func primaryKey() -> String {
        
        return "identifier"
    }
    
    // 必须实现一个空的初始化方法
//    required override init() {}
//    
//    enum CodingKeys: String, CodingKey {
//            case name, identifier, sortIndex
//            // employees 不参与
//        }
}
