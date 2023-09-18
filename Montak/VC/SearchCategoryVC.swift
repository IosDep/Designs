//
//  FoodCategoryVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit

class SearchCategoryVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var flag : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "SearchCategoriesCell", bundle: nil), forCellWithReuseIdentifier: "SearchCategoriesCell")
        
        let nib = UINib(nibName: "ItemsCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ItemsCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        tableView.delegate = self
        tableView.dataSource = self
        
        

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCategoriesCell", for: indexPath) as? SearchCategoriesCell
        
        
        return cell!
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let h = collectionView.bounds.height / 5
        let w = collectionView.bounds.width / 3

        return CGSize(width: w, height: h)

    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "ItemsCell", for: indexPath) as? ItemsCell
        
        
        return cell!
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    

}


