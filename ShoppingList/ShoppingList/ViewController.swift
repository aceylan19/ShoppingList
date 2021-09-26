//
//  ViewController.swift
//  ShoppingList
//
//  Created by Aleyna  Ceylan on 9/25/21.


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var shoppingList = [String]()

    @IBOutlet weak var TableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewList.delegate = self
        TableViewList.dataSource = self
        
        shoppingList.append("Apple")
        shoppingList.append("Banana")
        shoppingList.append("Pie")
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }

    
}

