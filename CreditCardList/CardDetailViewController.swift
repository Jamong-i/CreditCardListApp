//
//  CardDetailViewController.swift
//  CreditCardList
//
//  Created by Jamong on 2023/01/16.
//

import UIKit
import Lottie
 
class CardDetailViewController: UIViewController {
	var promotionDetail: PromotionDetail?
	
	@IBOutlet weak var lottieView: LottieAnimationView!
	
	@IBOutlet var titleLabel: UILabel!
	@IBOutlet var periodLabel: UILabel!
	@IBOutlet var conditionLabel: UILabel!
	@IBOutlet var benefitConditionLabel: UILabel!
	@IBOutlet var benefitDetailLabel: UILabel!
	@IBOutlet var benefitDateLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let animationView = LottieAnimationView(name: "money")
		lottieView.contentMode = .scaleAspectFit
		lottieView.addSubview(animationView)
		animationView.frame = lottieView.bounds
		animationView.play()
	}
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		guard let detail = promotionDetail else { return }
		
		titleLabel.text = """
		\(detail.companyName)카드 쓰면
		\(detail.amont)만원 드려요.
		"""
		
		periodLabel.text = detail.period
		conditionLabel.text = detail.condition
		benefitConditionLabel.text = detail.benefitCondition
		benefitDetailLabel.text = detail.benefitDetail
		benefitDateLabel.text = detail.benefitDate
	}
	
}
