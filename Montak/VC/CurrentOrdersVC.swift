//
//  CurrentOrdersVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit
import MOLH

class CurrentOrdersVC: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var rejectedBtn: UIButton!
    @IBOutlet weak var activeBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var mainTitle: DesignableLabel!
    
    @IBOutlet weak var backBtn: UIButton!
    
    var flag : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)
        
        if flag == 1 {
            mainTitle.text = "Previous Orders".localized()
        }
        
        else if flag == 2 {
            mainTitle.text = "Current Orders".localized()

            
        }
                    
        else if flag == 2 {
            mainTitle.text = "Cancelled Orders".localized()

        }
        
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
