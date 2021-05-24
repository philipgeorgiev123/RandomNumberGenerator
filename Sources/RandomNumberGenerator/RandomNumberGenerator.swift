import NumbersA

public struct RandomNumberGenerator {
    var text = "Hello, World!"
    var numbers = NumbersA()
    
    public func HelloToYou()->String {
        return "Hello To You!"
    }
    
    public init () {
        let hasNumbers = numbers.GotNumbers()
        print(hasNumbers)
    }
    
    public func GenerateRandomNumber()->Int {
        return 5;
    }
}
