//
//  NotificationVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit

class NotificationVC: UIViewController  , UITableViewDelegate , UITableViewDataSource  , DeleteDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "NotificationCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "NotificationCell")
        tableView.dataSource = self
        tableView.delegate = self


    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as? NotificationCell
        
        return cell!
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
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
