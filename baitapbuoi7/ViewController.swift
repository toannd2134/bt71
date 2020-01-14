//
//  ViewController.swift
//  baitapbuoi7
//
//  Created by Toan on 1/14/20.
//  Copyright © 2020 Toan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hightextfied: UITextField!
    
    @IBOutlet weak var outletTextFied: UILabel!
    @IBOutlet weak var weightextfield: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var myview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        myview.center = view.center
        myview.frame  = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        button.layer.cornerRadius = 5
        hightextfied.placeholder = "nhập chiều cao/m "
        weightextfield.placeholder = "nhập cân nặng/kg "
       
    
    }

    @IBAction func press(_ sender: Any) {
        
        let high = Float(hightextfied.text ?? "0") ?? 0
        let weight = Float(weightextfield.text ?? "0") ?? 0
        
        var mib : Float = Float(weight/(high*high))
        switch mib {
        case _ where mib < 18,5:
            outletTextFied.text = "bạn hơi thiếu cân cần bổ xung dinh dưỡng "
        case _ where mib <= 22,99:
            outletTextFied.text = " thể trạng hiện tại của bạn bình thường cố gắng duy trì thể trạng "
            break
        case  _ where mib < 29,99:
            outletTextFied.text = "bạn đang thừa cân nặng nên hạn chế đồ ăn nhanh và đồ có ga "
            break
            
        case _ where mib < 39,99 :
            outletTextFied.text = " bạn đang trong tình trạng béo phì nên có chế độ ăn kiêng và tập thể duc đều đặn"
            
            break
            
        case _ where mib > 40 :
            outletTextFied.text = " bạn đang trong tình trạng nguy hiểm nên được bác sĩ  kiểm tra và có chế độ hợp lí"
            break
            
        default:
            alert("error" )
        }
    }
    func alert(_ message :String){
            let alertController = UIAlertController(title: "Xin nhap lai", message: message, preferredStyle: .alert)
                 let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
                 alertController.addAction(okAction)
                 self.present(alertController, animated: true, completion: nil)
             }
    
}

