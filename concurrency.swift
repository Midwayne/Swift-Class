import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var counter = 1

    //Background queue number 1
DispatchQueue.main.async {
    for i in 0...3 {
        counter = i
        print("\(counter)")
    }
}

    //initiates first -> main thread
for i in 4...6 {
    counter = i
    print("\(counter)")
}
    //Bakcground queue number 2
DispatchQueue.main.async {
    counter = 9
    print(counter)
}
