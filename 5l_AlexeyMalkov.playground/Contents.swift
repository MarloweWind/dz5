import UIKit

enum windows{
    case open
    case closed
}
enum engine{
    case on
    case off
}
enum nitro{
    case nitroOn
    case nitroOff
}
enum luggage{
    case trunkIsFull
    case TrunkIsEmpty
}
protocol Car {
    var brand: String {get}
    var release: Int {get}
    var engineState: engine {get set}
    var windowsState: windows {get set}
}
extension Car {
    mutating func changeEngineState(engineState: engine){
        self.engineState = engineState
    }
    mutating func chageWindowsState(windowsState: windows){
        self.windowsState = windowsState
    }
}
class sportCar: Car, CustomStringConvertible{
    var brand: String
    var release: Int
    var engineState: engine = .off
    var windowsState: windows = .closed
    var nitroState: nitro = .nitroOff
    init(brand: String, release: Int) {
        self.brand = brand
        self.release = release
    }
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), nitro is \(nitroState), release date is \(release)"
    }
}
class trunkCar: Car, CustomStringConvertible{
    var brand: String
    var release: Int
    var engineState: engine = .off
    var windowsState: windows = .closed
    var trunkState: luggage = .TrunkIsEmpty
    init(brand: String, release: Int) {
        self.brand = brand
        self.release = release
    }
    var description: String{
        return "engine is \(engineState), windows is \(windowsState), trunk is \(trunkState), release date is \(release)"
    }
}
var mitsubisi = sportCar(brand: "Митсубиши", release: 2019)
var gazel = trunkCar(brand: "Газель", release: 2005)
mitsubisi.changeEngineState(engineState: .on)
mitsubisi.nitroState = .nitroOn
gazel.chageWindowsState(windowsState: .open)
gazel.trunkState = .trunkIsFull
print(mitsubisi.description)
print(gazel.description)
//на проверку
