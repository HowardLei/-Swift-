import UIKit
import Social
class GalleryViewController: UIViewController {
    var imageName: String?
    
    @IBOutlet weak var beautyImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = imageName{
            beautyImage.image = UIImage(named: name)
            switch name {
            case "fanbingbing":
                navigationItem.title = "范冰冰"
            case "libingbing":
                navigationItem.title = "李冰冰"
            case "wangfei":
                navigationItem.title = "王菲"
            case "yangmi":
                navigationItem.title = "杨幂"
            case "zhouxun":
                navigationItem.title = "周迅"
            default:
                navigationItem.title = "女神画廊"
            }
        }
        
    }
    @IBAction func shareTapped(_ sender: Any) {
        let controller: SLComposeViewController =  SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)//无法分享，没法调用新浪微博的接口，在iOS11上已经取消了
        controller.setInitialText("一起来玩女神画廊吧，就在App Store上")
        controller.add(beautyImage.image)
        self.present(controller, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
