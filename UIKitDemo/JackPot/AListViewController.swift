////
////  JackPotViewController.swift
////  UIKitDemo
////
////  Created by Mindaugas Balakauskas on 21/12/2022.
////
//
//import UIKit
//
//class AListViewController: UIViewController {
//
//
//    
//    let viewModel = JackPotViewModel()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        //tableView.dataSource = self
//        viewModel.getJackpot()
//    }
//}
//extension AListViewController: UITableViewDataSource {
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return viewModel.jackPotDetails.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? JackPotTableViewCell else {
//            return UITableViewCell()
//        }
//        
//        let jackPotDetails = viewModel.jackPotDetails[indexPath.row]
//        cell.updateData(jackPotDetails)
//        
//        return cell
//    }
//    
//}
