//
//  ListViewController.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 20/12/2022.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var itemList = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    let viewModel = JackPotViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getJackpot()
        viewModel.refreshData = {
            DispatchQueue.main.async {
                self.tableView.reloadData()
                
            }
        }
        
        let jackPotTableViewCell = UINib(nibName: "JackPotTableViewCell", bundle: nil)
        self.tableView.register(jackPotTableViewCell, forCellReuseIdentifier: "JackPotTableViewCell")
    }

}
extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return itemList.count
        }else {
            return viewModel.jackPotDetails.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DemoTableViewCell
                    
            let item = itemList[indexPath.row]
            cell.nameLabel.text = item
            cell.imageViewIcon?.image = .checkmark
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "JackPotTableViewCell", for: indexPath) as? JackPotTableViewCell else {
                return UITableViewCell()
            }
            
            let jackPotDetails = viewModel.jackPotDetails[indexPath.row]
            cell.updateData(jackPotDetails)
            
            return cell
        }
        
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
}
extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            print(itemList[indexPath.row])
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let detailViewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            if indexPath.section == 0 {
                detailViewController.screenTitle = itemList[indexPath.row]
            } else {
               
                let jackPotDetails = viewModel.jackPotDetails[indexPath.row]
                detailViewController.screenTitle = jackPotDetails.winningJackpot
            }
            self.navigationController?.pushViewController(detailViewController, animated: true)

            
        } else {
            let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let gridVC: UIViewController = storyboard.instantiateViewController(withIdentifier: "GridViewControllerID") as! GridViewController
            self.navigationController?.pushViewController(gridVC, animated: true)
        }
        }
        
}
