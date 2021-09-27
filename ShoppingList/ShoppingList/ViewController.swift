//
//  ViewController.swift
//  ShoppingList
//
//  Created by Aleyna Ceylan on 9/25/21.


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var shoppingList = [String]()
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var CountField: UITextField!
    @IBOutlet weak var TableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewList.delegate = self
        TableViewList.dataSource = self
        
    }
    @IBAction func SetAddButton(_ sender: Any) {
        shoppingList.append(userInput.text!)
    }

    @IBAction func setSendButton(_ sender: UIButton, forEvent event: UIEvent) {
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            shoppingList.remove(at:indexPath.row)
            TableViewList.deleteRows(at: [indexPath], with: UITableView.RowAnimation.top)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    func textFieldShouldReturn(_ userInput: UITextField) -> Bool {
        userInput.resignFirstResponder() // dismiss keyboard
        return true
    }
}

