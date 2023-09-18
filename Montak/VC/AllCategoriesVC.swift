//
//  AllCategoriesVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit

class AllCategoriesVC: UIViewController  , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    
    
    
    @IBOutlet weak var mainTitle: UILabel!
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "thirdHomePageCell", bundle: nil), forCellWithReuseIdentifier: "thirdHomePageCell")
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.minimumInteritemSpacing = 0
        }


    }
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 9
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "thirdHomePageCell", for: indexPath) as? thirdHomePageCell
        
        
        return cell!
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let h = collectionView.bounds.height / 5
        let w = collectionView.bounds.width / 3

        return CGSize(width: w, height: h)

    }
    
    

}
