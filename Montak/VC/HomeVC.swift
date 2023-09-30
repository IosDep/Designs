//
//  HomeVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit


class HomeVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource  ,UIScrollViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var sectionsCollectionViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var backgroundScrolll: UIScrollView!
    @IBOutlet weak var collectionViewA: UICollectionView!
    @IBOutlet weak var collectionViewB: UICollectionView!
    @IBOutlet weak var collectionViewC: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewA.register(UINib(nibName: "firstHomePageCell", bundle: nil), forCellWithReuseIdentifier: "firstHomePageCell")
        
        
        collectionViewA.delegate = self
        collectionViewA.dataSource = self
        
        
        collectionViewB.register(UINib(nibName: "secondHomePageCell", bundle: nil), forCellWithReuseIdentifier: "secondHomePageCell")
        
        
        collectionViewB.delegate = self
        collectionViewB.dataSource = self
        
        
        collectionViewC.register(UINib(nibName: "thirdHomePageCell", bundle: nil), forCellWithReuseIdentifier: "thirdHomePageCell")
        
        if let layout = collectionViewC.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.minimumInteritemSpacing = 0
        }

        
        collectionViewC.delegate = self
        collectionViewC.dataSource = self
        pageControl.numberOfPages = 3
        reloadSectionsCollection()
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == collectionViewA {return 3}
        else if collectionView == collectionViewB {return 3}
        else {return 4}
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewA {
            
            let cell = self.collectionViewA.dequeueReusableCell(withReuseIdentifier: "firstHomePageCell", for: indexPath) as? firstHomePageCell
            
            return cell!

            
        }
        
        else if collectionView == collectionViewB {
            
            var cell = self.collectionViewB.dequeueReusableCell(withReuseIdentifier: "secondHomePageCell", for: indexPath) as? secondHomePageCell
            
            return cell!
        }
       
        else {
            var cell = self.collectionViewC.dequeueReusableCell(withReuseIdentifier: "thirdHomePageCell", for: indexPath) as? thirdHomePageCell
            
            return cell!
        }
      
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == collectionViewA {
            
            let h = collectionView.bounds.height
            let w = collectionView.bounds.width

            return CGSize(width: w, height: h)
            
        }
        
        else if collectionView == collectionViewB {
            let h = collectionView.bounds.height
            let w = collectionView.bounds.width

            return CGSize(width: w, height: h)

        }
        
        else {
            let h = 134.0
            let w = collectionView.bounds.width / 3

            return CGSize(width: w, height: h)
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageWidth = scrollView.frame.width
           let currentPage = Int((scrollView.contentOffset.x + pageWidth / 2) / pageWidth)
           pageControl.currentPage = currentPage
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        if collectionView == collectionViewB {
            
            let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let vc = storyBoard.instantiateViewController(withIdentifier: "OffersVC") as! OffersVC
            
            self.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true)
            
        }
        
         else  if collectionView == collectionViewC {
             
             let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
             let vc = storyBoard.instantiateViewController(withIdentifier: "SearchCategoryVC") as! SearchCategoryVC
             vc.flag = 1
             self.modalPresentationStyle = .overFullScreen
             self.present(vc, animated: true)
             
         }
    }
    
    

    func reloadSectionsCollection() {
        let height = collectionViewC.collectionViewLayout.collectionViewContentSize.height
        sectionsCollectionViewHeightConstraint.constant = height
        self.view.setNeedsLayout()
    }
    
}
