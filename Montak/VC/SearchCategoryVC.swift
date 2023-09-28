//
//  FoodCategoryVC.swift
//  Montak
//
//  Created by Blue Ray on 10/09/2023.
//

import UIKit

class SearchCategoryVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource , UITableViewDelegate , UITableViewDataSource , UIScrollViewDelegate{

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var headerView: UIView!
    var flag : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        tableView.tableHeaderView = UIView()
//
//        let headerHeight: CGFloat = 200
//        tableView.contentInset = UIEdgeInsets(top: headerHeight, left: 0, bottom: 0, right: 0)

        
        
        
        collectionView.register(UINib(nibName: "SearchCategoriesCell", bundle: nil), forCellWithReuseIdentifier: "SearchCategoriesCell")
        
        let nib = UINib(nibName: "ItemsCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ItemsCell")
        
        tableView.register(UINib(nibName: "TotalFooter", bundle: Bundle.main), forHeaderFooterViewReuseIdentifier: "TotalFooter")
        
        
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
        cell?.counterView.isHidden = true
        cell?.addTocartView.isHidden = false
        
        return cell!
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        let vc = storyBoard.instantiateViewController(withIdentifier: "ItemDetailsVC") as! ItemDetailsVC
        
        self.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "TotalFooter") as! TotalFooter
        
        return footerView
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//
//           let yOffset = scrollView.contentOffset.y + tableView.contentInset.top
//
//           // Calculate the new constant for the header view's top constraint
//           let newConstant = max(-yOffset, -headerView.bounds.height)
//
//           // Update the top constraint constant
//           heightConstraint.constant = newConstant
//
//           // Check if the header view is hidden
//           let isHeaderViewHidden = yOffset > 0
//
//           // Adjust content inset based on whether the header is currently hidden
//           let headerHeight: CGFloat = isHeaderViewHidden ? 0 : 200
//           tableView.contentInset = UIEdgeInsets(top: headerHeight, left: 0, bottom: 0, right: 0)
//       }
    
    
    var previousScrollViewYOffset: CGFloat = 0
    var headerViewIsHidden = false

    var viewHeight: CGFloat = 200
    private var isAnimationInProgress = false

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if !isAnimationInProgress {

            // Check if an animation is required
            if scrollView.contentOffset.y > .zero &&
                heightConstraint.constant > .zero {

                heightConstraint.constant = .zero
                headerView.isHidden = true
                animateTopViewHeight()
            }
            else if scrollView.contentOffset.y <= .zero
                        && heightConstraint.constant <= .zero {

                heightConstraint.constant = viewHeight
                headerView.isHidden = false
                animateTopViewHeight()
            }
        }
    }

    private func animateTopViewHeight() {

        // Lock the animation functionality
        isAnimationInProgress = true

        UIView.animate(withDuration: 0.2) {

            self.view.layoutIfNeeded()

        } completion: { [weak self] (_) in

            // Unlock the animation functionality
            self?.isAnimationInProgress = false
        }
    }
}
    
    
    




