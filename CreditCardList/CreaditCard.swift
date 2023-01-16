//
//  CreaditCard.swift
//  CreditCardList
//
//  Created by Jamong on 2023/01/16.
//

import Foundation


struct CreditCard: Codable {
	let id: Int
	let rank: Int
	let name: String
	let cardImageURL: String
	let promotionDetail: PromotionDetail
	let isSelected: Bool?
	
}

struct PromotionDetail: Codable {
	let companyName: String
	let amont: Int
	let period: String
	let benefitDate: String
	let benefitDetail: String
	let benefitCondition: String
	let condition: String
}
