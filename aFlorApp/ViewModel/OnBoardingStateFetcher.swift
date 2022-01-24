import Foundation

class OnBoardingStateFetcher: ObservableObject{
    @Published var onBoardingState: Bool = false
    
    init(){
        if UserDefaults().bool(forKey: "State") {
            onBoardingState = true
        } else {
            onBoardingState = false
        }
    }
    
    func finishOnBoarding() {
        onBoardingState = true
        UserDefaults().set(true, forKey: "State")
    }
}
