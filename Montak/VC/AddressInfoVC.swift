//
//  AddressInfoVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.

import UIKit
import MOLH

class AddressInfoVC: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "NewAddressCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "NewAddressCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)
        
        

    }
    
    
    @IBAction func newAdressPressed(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

            
             let vc = storyBoard.instantiateViewController(withIdentifier: "AddNewAddress") as! AddNewAddress
             vc.modalPresentationStyle = .fullScreen
             self.present(vc, animated: true)

        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "NewAddressCell", for: indexPath) as? NewAddressCell
        
      
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    
}
