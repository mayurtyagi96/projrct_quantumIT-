//
//  ViewController2.swift
//  projectQuantumITInnovation
//
//  Created by mayur kant tyagi on 04/10/22.
//

import UIKit

class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    // Data
    var array1: [ItemData] = [ItemData(image: UIImage(named: "apple")!, originalPrice: "₹ 199", discountedPrice: "₹159", itemName: "apple", quantity: "1 kg"), ItemData(image: UIImage(named: "pumpkin")!, originalPrice: "₹ 44", discountedPrice: "₹ 40", itemName: "pumpkin", quantity: "1"), ItemData(image: UIImage(named: "tinda")!, originalPrice: "₹ 119", discountedPrice: "₹ 110", itemName: "small Tindey", quantity: "1 kg"), ItemData(image: UIImage(named: "kiwi")!, originalPrice: "₹ 60", discountedPrice: "₹ 45", itemName: "kivi", quantity: "1 pcs")]

    var arr2: [ItemData] = [ItemData(image: UIImage(named: "images-2")!, originalPrice: "₹ 800", discountedPrice: "₹ 400", itemName: "Kurti", quantity: "6")]

    var myCartData: [CartData] = []

    
    


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCartData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartTableViewCell", for: indexPath) as! CartTableViewCell
        cell.myCart = myCartData[indexPath.row].allItem
        cell.totalPriceLabel.text = myCartData[indexPath.row].TotalPrice
        cell.cartTypeLabel.text = myCartData[indexPath.row].cartType
            return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCartData.append(CartData(allItem: array1, cartType: "MINI BASKET", TotalPrice: "₹ 354"))
        myCartData.append(CartData(allItem: arr2, cartType: "DesignerHub", TotalPrice: "₹ 400"))
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        tableViewOutlet.register(UINib(nibName: "CartTableViewCell", bundle: nil), forCellReuseIdentifier: "CartTableViewCell")
        
    }
    
}

struct ItemData{
    var image: UIImage
    var originalPrice: String
    var discountedPrice: String
    var itemName: String
    var quantity: String
}

struct CartData{
    var allItem: [ItemData]
    var cartType: String
    var TotalPrice: String
}






