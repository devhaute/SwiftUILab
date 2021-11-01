import Foundation

typealias AppStore = Store<AppState, AppAction>

final class Store<State, Action>: ObservableObject {
    @Published private(set) var state: State
    
    private let reducer: Reducer<State, Action>
    
    init(initState: State, reducer: @escaping Reducer<State, Action>) {
        self.state = initState
        self.reducer = reducer
    }
    
    func dispatch(_ action: Action){
        reducer(&state, action)
    }
}
