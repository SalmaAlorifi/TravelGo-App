
import Foundation

// Tha page model is just for modeling the page and holding the data.

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "This is a sample description for the purpose of debugging", imageUrl: "work", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Explore Riyadh!", description: "Find trending places in Riyadh", imageUrl: "Riyadh", tag: 0),
        Page(name: "Chat with locals!", description: "Make new connections all around the world and arrange a meet up", imageUrl: "Chat with locals", tag: 1),
        Page(name: "Find tips and information!", description: "Don't know how to act or prepare before visiting? we have all the info you need", imageUrl: "Find tips ", tag: 2),
    ]
}
