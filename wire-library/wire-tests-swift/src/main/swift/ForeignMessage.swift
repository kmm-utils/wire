// Code generated by Wire protocol buffer compiler, do not edit.
// Source: squareup.protos.kotlin.foreign.ForeignMessage in foreign.proto
import Foundation
import Wire

public struct ForeignMessage {

    public var i: Int32?
    public var unknownFields: Data = .init()

    public init(i: Int32? = nil) {
        self.i = i
    }

}

extension ForeignMessage : Equatable {
}

extension ForeignMessage : Hashable {
}

extension ForeignMessage : Proto2Codable {
    public init(from reader: ProtoReader) throws {
        var i: Int32? = nil

        let token = try reader.beginMessage()
        while let tag = try reader.nextTag(token: token) {
            switch tag {
            case 1: i = try reader.decode(Int32.self)
            default: try reader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try reader.endMessage(token: token)

        self.i = i
    }

    public func encode(to writer: ProtoWriter) throws {
        try writer.encode(tag: 1, value: self.i)
        try writer.writeUnknownFields(unknownFields)
    }
}

extension ForeignMessage : Codable {
    public enum CodingKeys : String, CodingKey {

        case i

    }
}
