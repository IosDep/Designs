//
//  CurrentOrdersVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit

class CurrentOrdersVC: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var rejectedBtn: UIButton!
    @IBOutlet weak var activeBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CurrentOrdersCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CurrentOrdersCell")
        tableView.dataSource = self
        tableView.delegate = self

    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "CurrentOrdersCell", for: indexPath) as? CurrentOrdersCell
        
        
        return cell!
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }
    

}
