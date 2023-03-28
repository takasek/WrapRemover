@main
public struct WrapRemover {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(WrapRemover().text)
    }
}
