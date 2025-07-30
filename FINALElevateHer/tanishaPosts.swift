import SwiftUI

// MARK: - Models

struct Comment: Identifiable {
    let id = UUID()
    let text: String
}

struct Post: Identifiable {
    let id = UUID()
    var content: String
    var comments: [Comment] = []
}

// MARK: - ViewModel

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []
    
    func addPost(content: String) {
        let newPost = Post(content: content)
        posts.append(newPost)
    }
    
    func addComment(to post: Post, text: String) {
        if let index = posts.firstIndex(where: { $0.id == post.id }) {
            posts[index].comments.append(Comment(text: text))
        }
    }
}

// MARK: - Main View

struct ContentView: View {
    @StateObject private var viewModel = PostViewModel()
    @State private var newPostText = ""

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Write a post...", text: $newPostText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button("Post") {
                        let trimmed = newPostText.trimmingCharacters(in: .whitespacesAndNewlines)
                        guard !trimmed.isEmpty else { return }
                        viewModel.addPost(content: trimmed)
                        newPostText = ""
                    }
                }
                .padding()

                List {
                    ForEach(viewModel.posts) { post in
                        NavigationLink(destination: CommentsView(post: post, viewModel: viewModel)) {
                            VStack(alignment: .leading) {
                                Text(post.content)
                                    .font(.headline)
                                Text("\(post.comments.count) comment(s)")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Posts")
        }
    }
}

// MARK: - Comments View

struct CommentsView: View {
    let post: Post
    @ObservedObject var viewModel: PostViewModel
    @State private var newCommentText = ""

    var body: some View {
        VStack {
            List {
                ForEach(post.comments) { comment in
                    Text(comment.text)
                }
            }

            HStack {
                TextField("Write a comment...", text: $newCommentText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button("Send") {
                    let trimmed = newCommentText.trimmingCharacters(in: .whitespacesAndNewlines)
                    guard !trimmed.isEmpty else { return }
                    viewModel.addComment(to: post, text: trimmed)
                    newCommentText = ""
                }
            }
            .padding()
        }
        .navigationTitle("Comments")
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
