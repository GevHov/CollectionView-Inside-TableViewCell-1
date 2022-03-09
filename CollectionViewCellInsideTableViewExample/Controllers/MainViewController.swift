//
//  MainViewController.swift
//  CollectionViewCellInsideTableViewExample
//
//  Created by Gevorg Hovhannisyan on 6/15/21.
//  Copyright © 2021 Gevorg Hovhannisyan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - LifeCycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register Cell
        tableView.register(UINib(nibName: ExampleTableViewCell.id, bundle: nil), forCellReuseIdentifier: ExampleTableViewCell.id)
        
    }
    
}


// MARK: - Extensions
extension MainViewController: UITableViewDelegate, UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ExampleTableViewCell.id, for: indexPath) as! ExampleTableViewCell
        return cell
    }
    
}
