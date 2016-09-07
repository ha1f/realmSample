//
//  ViewController.swift
//  realmSample
//
//  Created by はるふ on 2016/09/07.
//  Copyright © 2016年 はるふ. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let me = User()
        me.name = "はるふ"
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(me)
        }
        
        print(realm.objects(User))
    }

}

