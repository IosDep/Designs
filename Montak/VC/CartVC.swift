//
//  CartVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit

class CartVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CartItemCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CartItemCell")
        
        tableView.delegate = self
        tableView.dataSource = self


    }
    
    
    @IBAction func backPressed(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "CartItemCell", for: indexPath) as? CartItemCell
        
      
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

   

}
