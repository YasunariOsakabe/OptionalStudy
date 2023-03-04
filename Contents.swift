import UIKit

var greeting = "Hello, playground"

//オプショナルバインディング
//オプショナルバインディング（Optional-Binding）という記述方法を使うと、「変数valueがnilでない場合」と「nilだった場合」の処理を分岐できます。
let value: Int?
value = 123

if let value = value {
   // コードブロックA: valueがnilでない時の処理
   type(of: value)    // ここでは普通のInt型
} else {
   // コードブロックB: valueがnilだった時の処理
   fatalError()
}

type(of: value)   // この時点でオプショナルInt型

//↑
//シャドーイング
//if let value = value {

//If-Let構文で、同じ名前の定数オブジェクトを使うところが「シャドーイング」です。
//この時点で、変数valueは定数valueの影に隠れて見えなくなってしまうんですね。もちろんオプショナルではないことが保証されているので安全です。



//Guard-Let構文
//同じシャドーイングのようでも、反対な使い方ができるのがGuard-Let構文です
guard let value = value else {
   // コードブロックC: valueがnilだった時の処理
   fatalError()
}

type(of: value)   // valueは普通のInt型
