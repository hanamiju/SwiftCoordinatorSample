# なにこれ
Coordinatorを使ってViewControllerから画面遷移の処理を引き剥がしたい案

# Sample App
今回のパターンで延々と画面遷移を行うアプリ

# やってること
## Configrator

* ViewController周りの依存処理を書く

```swift:Configrator.swift

    func configure(with vc: ViewController) {
		let coorcinator = Coordinator(currentVC: vc)
        let viewModel = ViewModel(with: coorcinator)
        
        vc.viewModel = viewModel
    }
```

## Coordinator

* 遷移の処理のみを書く
* ViewControllerの入力パラメータが欲しい場合は引数とかにすればいいのでは（適当）
* 遷移先が複数あったらその分関数を作ればいいのでは（適当）

```swift:Coordinator.swift
    func push() {
        let nextVC = SecondViewController.viewController()
		currentVC.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func pop() {
        currentVC.navigationController?.popViewController(animated: true)
    }
```

## ViewModel

* Coordinatorをメンバでもつ（`private`）
* Coordinatorを使って遷移処理を呼び出す


```swift:ViewModel.swift
    private let coodinator: Coordinator // CoodinatorはViewModelだけが使える
    let labelStr: String
    
    init(with coodinator: Coordinator, labelStr: String) {
        self.coodinator = coodinator
        self.labelStr = labelStr
    }

    // Viewのイベントで呼び出す
    func push() {
        coodinator.push()
    }

```

## ViewController
* ViewModel経由で遷移処理を実行する

### ViewControllerInitializable
* ViewControllerを生成する
* 生成したViewControllerに対してConfig実行
	* これで、呼び出し側はConfigについて気にしない

```swift
// protocol
protocol ViewControllerInitializable where Self: UIViewController {
    static func viewController() -> Self
}

// ViewController
extension ViewController: ViewControllerInitializable {
    static func viewController() -> ViewController {
        
        let vc = UIStoryboard.init(name: "ViewController", bundle: nil).instantiateInitialViewController() as! ViewController
        Configrator().configure(with: vc)
        
        return vc
    }
}
```

# ファイル作んのダルいんだが
Generambaを使ってコードを生成する。

## Usage

以下を叩く。

```
$ generamba gen Third coodinator_sample
```

以下が出力される。
- ThirdConfigrator.swift
- ThirdCoordinator.swift
- ThirdViewController.swift
- ThirdViewModel.swift

もうちょいProtocolで縛っとくと良さそう。

## 参考
* [iOS開発で VIPER / Clean Architecture を使うなら、ファイル自動生成の Generamba もどうぞ - Qiita](https://qiita.com/YKEI_mrn/items/d1f79ceddf6e009fdcd0)


# 参考
* [画面遷移の管理とMVVM - Speaker Deck](https://speakerdeck.com/yoching/hua-mian-qian-yi-falseguan-li-tomvvm)