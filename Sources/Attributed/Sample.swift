import Markdown
import Foundation

private func sample() {
    let source = "This is a markup *document*."
    let document = Document(parsing: source)
    print(document.debugDescription())
}
