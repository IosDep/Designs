//
//  CartVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit
import MOLH

class CartVC: UIViewController , UITableViewDelegate , UITableViewDataSource , DeleteDelegate{
    
    
   

    @IBOutlet weak var maintitle: UILabel!
    
    
    @IBOutlet weak var cartTitle: DesignableLabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backBtn: UIButton!
    
    var flag : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nib = UINib(nibName: "CartItemCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CartItemCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let image = MOLHLanguage.isRTLLanguage() ? UIImage(named: "backAr") : UIImage(named: "back1")
        
        backBtn.setImage(image, for: .normal)


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

   
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "ItemDetailsVC") as! ItemDetailsVC
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
    }
    
    
    @IBAction func paymentPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "PaymmentTrackingVC") as! PaymmentTrackingVC
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
        
//        self.navigationController?.pushViewController(vc, animated: false)

    }
    

    
    @IBAction func cartPessed(_ sender: Any) {
        
        self.dismiss(animated: true)
//        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
//
//        let vc = storyBoard.instantiateViewController(withIdentifier: "CartVC") as! CartVC
//
////        self.navigationController?.pushViewController(vc, animated: false)
//
//        self.modalPresentationStyle = .overFullScreen
//        self.present(vc, animated: true)

    }
    
    
    
    
    @IBAction func deleteAllPressed(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyBoard.instantiateViewController(withIdentifier: "PopUpDeleteVC") as! PopUpDeleteVC
        vc.deleteDelegate = self
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
        
        
    }
    
    
    func deletePressed(flag: Int) {
        if flag == 1 {
            
        // remove all
            
            self.dismiss(animated: true)

        }
        
        else {
            self.dismiss(animated: true)
            
            
        }
    }
    
    
}
