//
//  MontakBriefVC.swift
//  Montak
//
//  Created by Blue Ray on 07/09/2023.
//

import UIKit

class MontakBriefVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
   
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "MontakBriefCell", bundle: nil), forCellWithReuseIdentifier: "MontakBriefCell")
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        pageControl.numberOfPages = 3

    }
    
    
    @IBAction func skipPressed(_ sender: Any) {
    }
    @IBAction func backPressed(_ sender: Any) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "MontakBriefCell", for: indexPath) as? MontakBriefCell
        
        
        
        return cell!
        
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let h = collectionView.bounds.height
        let w = collectionView.bounds.width

        return CGSize(width: w, height: h)

    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageWidth = scrollView.frame.width
           let currentPage = Int((scrollView.contentOffset.x + pageWidth / 2) / pageWidth)
           pageControl.currentPage = currentPage
    }

    
   
}
