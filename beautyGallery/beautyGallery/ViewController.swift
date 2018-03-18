import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     }
}
