//
//  FirstViewController.swift
//  To Do List
//
//  Created by Ahmed nabil on 8/7/18.
//  Copyright © 2018 Ahmed nabil. All rights reserved.
//

import UIKit

   var list = ["buy clothes","study english","go to gym","attend training"]


class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var mytable: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "cell")
        cell.textLabel?.text = list [indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
        
          list.remove(at: indexPath.row)
            mytable.reloadData()
    
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        mytable.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

