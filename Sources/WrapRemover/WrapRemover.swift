#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
public typealias Font = UIFont
#elseif os(macOS)
import Cocoa
public typealias Font = NSFont
#endif

public struct WrapRemover {
    let text: String
    let lines: [Line]
    let metrics: Metrics

    public init(text: String, font: Font) {
        self.text = text
        lines = text.split(separator: "\n")
            .map { Line(String($0), font: font) }
        metrics = Metrics(lines: lines)
    }

    public struct Metrics {
//        let average: CGFloat
//        let variance: CGFloat

        init(lines: [Line]) {
//            k-meansクラスタリングアルゴリズムを用いて計算します
//
//            1. データの前処理
//            データに対して、適切な前処理を行います。例えば、外れ値の除去、スケーリングなどを行います。
//
//            2. kの決定
//            k-meansアルゴリズムでは、分割するクラスタ数kを決定する必要があります。kの値は、エルボー法やシルエット分析などの手法を用いて決定することができます。
//
//            3. クラスタリング
//            k-meansアルゴリズムにより、データをk個のクラスタに分割します。各クラスタの中心（重心）が計算されます。
//
//            4. 最頻値の決定
//            各クラスタにおいて、最頻値を計算します。最頻値は、各クラスタ内のデータの中で最も頻繁に出現する値です。
//
//            5. 結果の出力
//            各クラスタの数と最頻値を出力します。
        }
    }

    struct Line {
        let text: String
        let width: CGFloat

        init(_ s: String, font: Font) {
            text = s
            width = NSString(string: s).size(withAttributes: [.font: font]).width
        }
    }

    enum Estimation {
        case wrapped
        case hasLineBreak
        case unclear([Line])

        init(line: Line, nextLine: Line?, metrics: Metrics) {
            self = .unclear([line, nextLine].compactMap { $0 })
        }
    }

    public func execute() async -> String {
//        let results = zip(lines, lines...).map { l, nextLine in (l, Estimation(...)) }

//        let resolveds: [(String, Bool)] = await resolve(results)
        return text // combine(resolveds)
    }
}
