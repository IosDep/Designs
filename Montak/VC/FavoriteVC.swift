//
//  FavoriteVC.swift
//  Montak
//
//  Created by Blue Ray on 11/09/2023.
//

import UIKit

class FavoriteVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ItemsCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ItemsCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        


    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "ItemsCell", for: indexPath) as? ItemsCell
        cell?.heartBtn.setImage(UIImage(named: "favorite2"), for: .normal)
        cell?.deleteBtn.isHidden = false
        return cell!
        
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
    
    

    var previousScrollViewYOffset: CGFloat = 0
    var headerViewIsHidden = false

    var viewHeight: CGFloat = 100
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
