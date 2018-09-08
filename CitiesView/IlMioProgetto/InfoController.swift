//
//  InfoController.swift
//  IlMioProgetto
//
//  Created by Owner on 16/07/17.
//  Copyright © 2017 Edoardo Francesco Amedeo. All rights reserved.
//

import UIKit

class InfoController: UIViewController {
    
    var city: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = city
    }
}

