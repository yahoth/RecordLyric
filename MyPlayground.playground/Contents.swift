import Foundation

struct Postit {
    var id: String
    var name: String
}

var postit: Postit = Postit(id: "123", name: "김영서")
var postit = Postit(id: "123", name: "김영서")

//var myname = "김태형"
var myname = "김태형"

print(postit.id)
print(postit.name)
