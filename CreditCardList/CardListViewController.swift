//
//  CardListViewController.swift
//  CreditCardList
//
//  Created by Jamong on 2023/01/16.
//

import UIKit
import Kingfisher

class CardListViewController: UITableViewController {
	var creditCardList: [CreditCard] = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//UITabelView Cell Register
		let nibName = UINib(nibName: "CardListCell", bundle: nil)
		tableView.register(nibName, forCellReuseIdentifier: "CardListCell")
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return creditCardList.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "CardListCell", for: indexPath) as? CardListCell else { return UITableViewCell() }
		
		cell.rankLabel.text = "\(creditCardList[indexPath.row].rank)위"
		cell.promotionLabel.text = "\(creditCardList[indexPath.row].promotionDetail.amont)만원"
		cell.cardNameLabel.text = "\(creditCardList[indexPath.row].name)"
		
		let imageURL = URL(string: creditCardList[indexPath.row].cardImageURL)
		cell.cardImageView.kf.setImage(with: imageURL)
		
		return cell
	}
	
	override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 80
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		// 상세화면 전달
		let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
		guard let detailViewController = storyboard.instantiateViewController(identifier: "CardDetailViewController") as? CardDetailViewController else { return }
		
		detailViewController.promotionDetail = creditCardList[indexPath.row].promotionDetail
		self.show(detailViewController, sender: nil)
	}
}
