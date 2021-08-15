//
//  HomeVC.swift
//  PulBack
//
//  Created by Dilshod Iskandarov on 8/1/21.
//

import UIKit


class HomeVC: UIViewController {

    @IBOutlet weak var table : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // To change background colour.
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.9686004519, green: 0.9686473012, blue: 0.9920582175, alpha: 1)
//        let newNavbar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 100, width: view.frame.width, height: 224))
//        let navItem = UINavigationItem()
//
//        //create and assign the items
//
//        newNavbar.setItems([navItem], animated: false)
//        view.addSubview(newNavbar)
        // To change colour of tappable items.
        UINavigationBar.appearance().tintColor = .black
        self.navigationController?.navigationBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
//        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 100, width: self.view.frame.width, height: 100)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = nil
        // To apply textAttributes to title i.e. colour, font etc.
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor.white,
                                                            .font : UIFont.init(name: "AvenirNext-DemiBold", size: 22.0)!]
        // To control navigation bar's translucency.
        UINavigationBar.appearance().isTranslucent = false
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        setupTableElaments()
    }

}

extension HomeVC : UITableViewDelegate, UITableViewDataSource{
    private func setupTableElaments(){
        table.delegate = self
        table.dataSource = self
        
        table.register(BalanceCell.nib(), forCellReuseIdentifier: BalanceCell.id)
        table.register(BannersCell.nib(), forCellReuseIdentifier: BannersCell.id)
        table.register(MarketCell.nib(), forCellReuseIdentifier: MarketCell.id)
        table.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
     
       
            if indexPath.row == 0{
                return 200
            }else if indexPath.row == 1{
                return 260
            }
            return 130
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
     
            if indexPath.row == 0{
                let cell = table.dequeueReusableCell(withIdentifier: BalanceCell.id, for: indexPath) as! BalanceCell
                
                return cell
            }else if indexPath.row == 1{
                let cell = table.dequeueReusableCell(withIdentifier: BannersCell.id, for: indexPath) as! BannersCell
//                cell.page.numberOfPages = indexPath.row
                
                return cell
            }
       
            let cell = table.dequeueReusableCell(withIdentifier: MarketCell.id, for: indexPath) as! MarketCell
            
            return cell
        
        
        return UITableViewCell()
    }
    
    
}
