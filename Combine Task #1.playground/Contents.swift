import Foundation
import Combine


// MARK: - Task 1
//let publisher = Just("Hello, Combine!")
//
//// Subscribe and print the value
//let subscription = publisher
//    .sink { value in
//        print(value)
//    }

// MARK: - Task 2
//
//func delayedHelloFuture() -> Future<String, Never> {
//    Future { promise in
//        DispatchQueue.global.asyncAfter(deadline: .now() + 2) {
//            promise(.success("Hello, Combine!"))
//        }
//    }
//}
//
//var cancellables = Set<AnyCancellable>()
//
//
//let futurePublisher = delayedHelloFuture()
//
//print("Starting Future…")
//futurePublisher
//    .sink(receiveCompletion: { completion in
//        print("Completed with: \(completion)")
//    }, receiveValue: { value in
//        print("Received value: \(value)")
//    })
//    .store(in: &cancellables)


// MARK: - Task 3


//let namePublisher = Just("john")
//    .map { $0.capitalized }
//
//let surnamePublisher = Just("doe")
//
//
//let fullNamePublisher = Publishers.CombineLatest(namePublisher, surnamePublisher)
//    .map { name, surname in
//        "\(name) \(surname)"
//    }
//
//var cancellables = Set<AnyCancellable>()
//
//fullNamePublisher
//    .sink { fullName in
//        print(fullName)
//    }
//    .store(in: &cancellables)

// MARK: - Task 4


//let subject = PassthroughSubject<Int, Never>()
//
//
//var cancellables = Set<AnyCancellable>()
//
//subject
//    .filter { $0 % 2 == 0 }
//    .sink { value in
//        print("Received even number: \(value)")
//    }
//    .store(in: &cancellables)
//
//
//subject.send(1)
//subject.send(2)
//subject.send(3)
//subject.send(4)
//subject.send(5)
//subject.send(6)

// MARK: - Task 5

//let subject = PassthroughSubject<String, Never>()
//var cancellables = Set<AnyCancellable>()
//
//subject
//    .debounce(for: .milliseconds(500), scheduler: DispatchQueue.main)
//    .sink { value in
//        print("Final input: \(value)")
//    }
//    .store(in: &cancellables)
//
//
//let inputs = ["H", "He", "Hel", "Hello"]
//
//for (index, input) in inputs.enumerated() {
//    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.3) {
//        print("User typed: \(input)")
//        subject.send(input)
//    }
//}
//
//
//RunLoop.main.run(until: Date().addingTimeInterval(3))


// MARK: - Task 6


//let subject = PassthroughSubject<Int, Never>()
//var cancellables = Set<AnyCancellable>()
//
//subject
//    .flatMap { value -> Just<Int> in
//        let squared = value * value
//        return Just(squared)
//    }
//    .sink { squaredValue in
//        print("Squared value: \(squaredValue)")
//    }
//    .store(in: &cancellables)
//
//
//subject.send(2)
//subject.send(3)
//subject.send(4)

// MARK: - Task 7

//class ButtonViewModel {
//    let buttonPressed = PassthroughSubject<Void, Never>()
//
//    private var cancellables = Set<AnyCancellable>()
//    private var pressCount = 0
//
//    init() {
//        buttonPressed
//            .sink { [weak self] in
//                self?.pressCount += 1
//                print("Button pressed \(self?.pressCount ?? 0) time(s)")
//            }
//            .store(in: &cancellables)
//    }
//
//    func simulateButtonPress() {
//        buttonPressed.send()
//    }
//}
//


// MARK: - Task 8

//class LoadingViewModel: ObservableObject {
//    @Published var isLoading: Bool = false
//}
//
////Setup
//let viewModel = LoadingViewModel()
//var cancellables = Set<AnyCancellable>()
//
//
//viewModel.$isLoading
//    .sink { isLoading in
//        print("Loading state changed: \(isLoading ? "Loading..." : "Finished")")
//    }
//    .store(in: &cancellables)
//
////Simulate changes
//viewModel.isLoading = true
//
//DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
//    viewModel.isLoading = false
//}

// MARK: - Task 9

// Model File
struct Post: Decodable {
    let id: Int
    let title: String
}

// ViewModel File

class PostViewModel {
    @Published var posts: [Post] = []
    private var cancellables = Set<AnyCancellable>()

    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }

        URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Post].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Fetch failed: \(error)")
                }
            }, receiveValue: { [weak self] posts in
                self?.posts = posts
            })
            .store(in: &cancellables)
    }
}

// TableView File

import UIKit

class PostsViewController: UITableViewController {
    private var viewModel = PostViewModel()
    private var cancellables = Set<AnyCancellable>()
    private var posts: [Post] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Posts"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        bindViewModel()
        viewModel.fetchPosts()
    }

    private func bindViewModel() {
        viewModel.$posts
            .receive(on: DispatchQueue.main)
            .sink { [weak self] posts in
                self?.posts = posts
                self?.tableView.reloadData()
            }
            .store(in: &cancellables)
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        config.text = post.title
        cell.contentConfiguration = config
        return cell
    }
}

