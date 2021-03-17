////
// 🦠 Corona-Warn-App
//

import Foundation

struct Checkin: Equatable {

	let id: Int
	let traceLocationGUID: String
	let traceLocationVersion: Int
	let traceLocationType: TraceLocationType
	let traceLocationDescription: String
	let traceLocationAddress: String
	let traceLocationStartDate: Date?
	let traceLocationEndDate: Date?
>>>>>> release/2.0.x
	let traceLocationDefaultCheckInLengthInMinutes: Int?
	let traceLocationSignature: String
	let checkinStartDate: Date
	let checkinEndDate: Date?
	let targetCheckinEndDate: Date?
	let createJournalEntry: Bool

	var isActive: Bool {
		checkinEndDate == nil
	}

}
