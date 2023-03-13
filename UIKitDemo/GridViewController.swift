//
//  GridViewController.swift
//  UIKitDemo
//
//  Created by Mindaugas Balakauskas on 21/12/2022.
//

import UIKit

class GridViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}
extension GridViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let gridCell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCellID", for: indexPath) as! GridCollectionViewCell
        gridCell.labelName.text = "\(indexPath.item + 1)"
        return gridCell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
    
}

extension GridViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.item + 1)")
    }
    
}
