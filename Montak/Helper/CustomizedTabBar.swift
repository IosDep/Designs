import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create and configure view controllers for the tabs
        let firstViewController = HomeVC()
        firstViewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "Home"), tag: 0)

        let secondViewController = SearchItemsVC()
        secondViewController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "Search"), tag: 1)

        // Create and configure the view controller you want to present over content
        let thirdPresentedViewController = OrdersVC()
        thirdPresentedViewController.tabBarItem = UITabBarItem(title: "Orders", image: UIImage(named: "man"), tag: 2)

        let fourthViewController = FavoriteVC()
        fourthViewController.tabBarItem = UITabBarItem(title: "Favorite", image: UIImage(named: "Favorite"), tag: 3)
        
        let fifthVC = NotificationVC()
        fifthVC.tabBarItem = UITabBarItem(title: "N", image: UIImage(named: "Notifications"), tag: 4)

        // Add the view controllers to the tab bar
        self.viewControllers = [firstViewController, secondViewController, thirdPresentedViewController, fourthViewController , fifthVC]

        // Configure the third tab to present a specific view controller when selected
        if let thirdTabNavController = self.viewControllers?[2] as? UINavigationController {
            thirdTabNavController.viewControllers = [OrdersVC()]
        }
    }
}
