import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var beautyPicker: UIPickerView!
    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // 调用 pickerVIew 的 dataSource
        beautyPicker.dataSource = self
        // 调用 pickerView 的 delegate
        beautyPicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // 准备方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToGallery"{
            let index = beautyPicker.selectedRow(inComponent: (0))
            var imageName: String?
            switch index {
            case 0:
                imageName = "fanbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouxun"
            default:
                imageName = nil
            }
            let vc = segue.destination as! GalleryViewController
            vc.imageName = imageName
        }
    }
    // 通过 Unwind Segue 进行返回操作
    @IBAction func close(segue: UIStoryboardSegue){
        
    }
}
