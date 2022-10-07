//
//  TableViewCell.swift
//  projectQuantumITInnovation
//
//  Created by mayur kant tyagi on 04/10/22.
//

import UIKit

class CartTableViewCell: UITableViewCell,
                     UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    @IBOutlet weak var cartTypeLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var checkoutButton: UIButton!
    
    
    // variables
    var myCart:  [ItemData] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myCart.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "xibCollectionViewCell", for: indexPath) as! xibCollectionViewCell
        let data = myCart[indexPath.row]
        
        cell.itemNameLabel.text = data.itemName
        cell.originalPriceLabel.text = data.originalPrice
        cell.discountedPriceLabel.text = data.discountedPrice
        cell.quantityLabel.text = data.quantity
        cell.ImageView.image = data.image
    
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 5
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        
        
        mainView.layer.shadowColor = UIColor.black.cgColor
        mainView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        mainView.layer.shadowRadius = 5
        mainView.layer.shadowOpacity = 0.5
        mainView.layer.masksToBounds = false
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 150, height: collectionViewOutlet.layer.bounds.height - 10)
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        collectionViewOutlet.register(UINib(nibName: "xibCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "xibCollectionViewCell")
        deleteButton.layer.cornerRadius = 5
        checkoutButton.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
