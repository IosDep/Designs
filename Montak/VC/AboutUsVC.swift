//
//  AboutUsVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit

class AboutUsVC: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var logos = [UIImage?]()
    var titles : [String] = []
    var bodyTexts : [String] = []


                 
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let nib = UINib(nibName: "AboutUsCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "AboutUsCell")

        
        logos = [ UIImage(named: "Vision") , UIImage(named: "Message") ,  UIImage(named: "Values") ]
        
        titles = ["Vision" , "Message" , "Values"]
        
        bodyTexts =  [
            
        "The Montak application seeks to become the main destination for all customers in Jordan to secure their reserves of food supplies of all kinds at the lowest prices with ease and flexibility and with the highest levels of quality and satisfaction." ,
        
        "We are here, through our application, to meet customers’ needs for basic food supplies that are characterized by their high quality and competitive price in order to reach them with the least effort and most quickly possible" ,
        
        "Quality - Excellence - Competition" ]
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "AboutUsCell", for: indexPath) as? AboutUsCell
        
        cell?.logo.image = logos[indexPath.row]
        cell?.title.text = titles[indexPath.row]
        cell?.bodyText.text = bodyTexts[indexPath.row]
        
        
        
        
        return cell!
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
    }

}
