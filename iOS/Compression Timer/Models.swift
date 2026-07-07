import Foundation

struct SessionItem: Identifiable, Codable, Equatable {
    var id: UUID
    var dateAdded: Date
    var label: String
    var hoursWorn: String
    var goalHours: String
    var notes: String

    init(id: UUID = UUID(), dateAdded: Date = Date(), label: String, hoursWorn: String, goalHours: String, notes: String) {
        self.id = id
        self.dateAdded = dateAdded
        self.label = label
        self.hoursWorn = hoursWorn
        self.goalHours = goalHours
        self.notes = notes
    }

    static func blank() -> SessionItem {
        SessionItem(label: "", hoursWorn: "", goalHours: "", notes: "")
    }
}
