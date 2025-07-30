import SwiftUI

// MARK: - Models

struct Comment: Identifiable, Hashable {
    let id = UUID()
    let text: String
}

struct Post: Identifiable, Hashable {
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

// MARK: - View

struct tanishaPosts: View {
    @StateObject private var viewModel = PostViewModel()
    @State private var newPostText = ""

    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
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

                List(viewModel.posts) { post in
                    NavigationLink(value: post) {
                        VStack(alignment: .leading) {
                            Text(post.content)
                                .font(.headline)
                            Text("\(post.comments.count) comment(s)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }

                Button("Go to First Post's Comments") {
                    if let firstPost = viewModel.posts.first {
                        path.append(firstPost)
                    }
                }
                .padding()
            }
            .navigationTitle("Posts")
            .navigationDestination(for: Post.self) { post in
                CommentsView(post: post, viewModel: viewModel)
            }
        }
    }
}

// MARK: - CommentsView for completeness

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
    tanishaPosts()
}
