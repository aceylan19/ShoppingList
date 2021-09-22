//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Aleyna  Ceylan on 9/18/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var shoppingListNames = [String]()
    var shoppingListImages = [UIImage]()

    @IBOutlet weak var TableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewList.delegate = self
        TableViewList.dataSource = self
        
        shoppingListNames.append("Apple")
        shoppingListNames.append("Grapes")
        shoppingListNames.append("Banana")
        shoppingListNames.append("Bread")
        shoppingListNames.append("Milk")
        
        // shoppingListImages.append(UIImage(name: ...jpg)!)
        // Images will be added
    }
    @IBOutlet weak var HeadingLabel: UILabel!
    
    @IBAction func AddingButton(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text =  shoppingListNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingListNames.count
    }
}

