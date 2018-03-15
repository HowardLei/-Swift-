import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    //姓名栏
    @IBOutlet weak var name: UITextField!
    //性别选择器
    @IBOutlet weak var gender: UISegmentedControl!
    //生日选择器
    @IBOutlet weak var birthday: UIDatePicker!
    //身高条
    @IBOutlet weak var heightNumber: UISlider!
    //身高栏
    @IBOutlet weak var height: UILabel!
    //有房的选择器
    @IBOutlet weak var hasProperty: UISwitch!
    //底下小字
    @IBOutlet weak var result: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //通过滑动栏调整显示身高的方法
    @IBAction func heightChanged(_ sender: AnyObject) {
        let slider = sender as! UISlider
        let i = Int(slider.value)
        height.text = "\(i)cm"
    }
    //确定的方法
    @IBAction func okTapped(_ sender: AnyObject) {
        let genderText = gender.selectedSegmentIndex == 0 ? "高富帅" : "白富美"
        let gregorian = NSCalendar(calendarIdentifier:NSCalendar.Identifier.gregorian)
        //创建一个现在的时间，进行比较
        let now = Date()
        //创建一个值，即计算多少岁
        let components = gregorian?.components(NSCalendar.Unit.year, from: birthday.date, to: now, options: NSCalendar.Options(rawValue: 0))
        //提取岁数
        let age = components?.year
        //提取有无房产信息
        let hasPropertyText = hasProperty.isOn ? "有房" : "无房"//这个地方改成了isOn了
        //最后的输出信息
        result.text = "\(name.text ?? " "),\(age ?? 0)岁,\(genderText),身高\(height.text ?? " "),\(hasPropertyText),求交往！"
    }
    //UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder();
        return true
    }
}
