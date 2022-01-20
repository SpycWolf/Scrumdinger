//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Kota Kaneko on 2022/01/20.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String

    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
