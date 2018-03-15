import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
       }
    func demo1() {
        var candyJar = ["Bears", "Alps", "Peppermints"]
        print(candyJar)
        for e in candyJar.enumerated() {
            print("\(e.element)")
        }
        print("-----")
        candyJar.append("Sugus")//用append的时候记得保证数组是var
        candyJar += ["ww", "we", "你看看"]//用+=添加元素的时候
        print(candyJar)
        candyJar[1] = "看看"//修改数组里的数据的时候，直接通过索引修改就行
        print(candyJar)
        let team = ["MUD", "MCI", "ARS", 1] as Any
        print(team)
        let team1 = ["MUD", "MCI", "ARS", 1] as AnyObject
        print(team1)
    }
}
