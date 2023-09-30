//
//  OffersVC.swift
//  Montak
//
//  Created by Blue Ray on 30/09/2023.
//

import UIKit
import MOLH

class OffersVC: UIViewController , UITableViewDelegate , UITableViewDataSource{

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "OfferItemCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "OfferItemCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "OfferItemCell", for: indexPath) as? OfferItemCell
        
        
        cell?.expiryDate.isHidden = false
        
      
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }

   
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "ItemDetailsVC") as! ItemDetailsVC
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
    }
    
    
    

   

}
