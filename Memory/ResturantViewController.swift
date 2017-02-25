//
//  ResturantViewController.swift
//  Memory
//
//  Created by Ben Koska on 2/24/17.
//  Copyright © 2017 Lanogical. All rights reserved.
//

import UIKit
import Material

class ResturantViewController: UIViewController {

    var alert: UIAlertController?
    var action1: UIAlertAction?
    var image: UIImage?
    var image2: UIImage?
    var action3: UIAlertAction?
    var action2: UIAlertAction?
    
    @IBOutlet var tableView: TableView!
    @IBOutlet var fab: FabButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupUI(){
        fab.backgroundColor = Color.teal.base
        fab.image = Icon.cm.add
        fab.tintColor = Color.white
        fab.pulseColor = Color.white
        fab.addTarget(self, action: #selector(addClicked), for: .touchUpInside)
    }
    
    func addClicked() {
        alert = UIAlertController(title: "Add Item", message: nil, preferredStyle: .actionSheet)
        
        action3 = UIAlertAction(title: "Photo", style: .default) { (action) in
            
        }
        
        action2 = UIAlertAction(title: "Manual", style: .default) { (action) in
            
        }
        
        alert!.addAction(action2!)
        alert!.addAction(action3!)
        present(alert!, animated: true) {
            
        }
        
    }

}
