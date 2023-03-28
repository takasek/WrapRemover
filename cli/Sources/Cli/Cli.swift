import WrapRemoverLib

@main
public struct Cli {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(WrapRemoverLib().text)
    }
}
