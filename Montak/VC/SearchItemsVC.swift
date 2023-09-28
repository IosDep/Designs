//
//  SearchItemsVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit

class SearchItemsVC: UIViewController , UITableViewDataSource , UITableViewDelegate {

   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ItemsCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ItemsCell")
        tableView.dataSource = self
        tableView.delegate = self


    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "ItemsCell", for: indexPath) as? ItemsCell
        
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 200
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }


    

}
