// Code generated by Wire protocol buffer compiler, do not edit.
// Source: com.squareup.wire.protos.kotlin.map.MappyTwo in map.proto
import Wire

public struct MappyTwo {

    public var string_enums: [String : MappyTwo.ValueEnum] = [:]
    public var int_things: [Int64 : Thing] = [:]
    public var string_ints: [String : Int64] = [:]
    public var int_things_two: [Int32 : Thing] = [:]
    public var unknownFields: UnknownFields = .init()

    public init(configure: (inout Self) -> Swift.Void = { _ in }) {
        configure(&self)
    }

}

#if !WIRE_REMOVE_EQUATABLE
extension MappyTwo : Equatable {
}
#endif

#if !WIRE_REMOVE_HASHABLE
extension MappyTwo : Hashable {
}
#endif

extension MappyTwo : Sendable {
}

extension MappyTwo : ProtoDefaultedValue {

    public static var defaultedValue: MappyTwo {
        MappyTwo()
    }
}

extension MappyTwo : ProtoMessage {

    public static func protoMessageTypeURL() -> String {
        return "type.googleapis.com/com.squareup.wire.protos.kotlin.map.MappyTwo"
    }

}

extension MappyTwo : Proto2Codable {

    public init(from protoReader: ProtoReader) throws {
        var string_enums: [String : MappyTwo.ValueEnum] = [:]
        var int_things: [Int64 : Thing] = [:]
        var string_ints: [String : Int64] = [:]
        var int_things_two: [Int32 : Thing] = [:]

        let token = try protoReader.beginMessage()
        while let tag = try protoReader.nextTag(token: token) {
            switch tag {
            case 1: try protoReader.decode(into: &string_enums)
            case 2: try protoReader.decode(into: &int_things, keyEncoding: .signed)
            case 3: try protoReader.decode(into: &string_ints, valueEncoding: .signed)
            case 4: try protoReader.decode(into: &int_things_two, keyEncoding: .signed)
            default: try protoReader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try protoReader.endMessage(token: token)

        self.string_enums = string_enums
        self.int_things = int_things
        self.string_ints = string_ints
        self.int_things_two = int_things_two
    }

    public func encode(to protoWriter: ProtoWriter) throws {
        try protoWriter.encode(tag: 1, value: self.string_enums)
        try protoWriter.encode(tag: 2, value: self.int_things, keyEncoding: .signed)
        try protoWriter.encode(tag: 3, value: self.string_ints, valueEncoding: .signed)
        try protoWriter.encode(tag: 4, value: self.int_things_two, keyEncoding: .signed)
        try protoWriter.writeUnknownFields(unknownFields)
    }

}

#if !WIRE_REMOVE_CODABLE
extension MappyTwo : Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringLiteralCodingKeys.self)
        self.string_enums = try container.decodeProtoMap([String : MappyTwo.ValueEnum].self, firstOfKeys: "stringEnums", "string_enums")
        self.int_things = try container.decodeProtoMap([Int64 : Thing].self, firstOfKeys: "intThings", "int_things")
        self.string_ints = try container.decodeProtoMap([String : Int64].self, firstOfKeys: "stringInts", "string_ints")
        self.int_things_two = try container.decodeProtoMap([Int32 : Thing].self, firstOfKeys: "intThingsTwo", "int_things_two")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringLiteralCodingKeys.self)
        let preferCamelCase = encoder.protoKeyNameEncodingStrategy == .camelCase
        let includeDefaults = encoder.protoDefaultValuesEncodingStrategy == .include

        if includeDefaults || !self.string_enums.isEmpty {
            try container.encodeProtoMap(self.string_enums, forKey: preferCamelCase ? "stringEnums" : "string_enums")
        }
        if includeDefaults || !self.int_things.isEmpty {
            try container.encodeProtoMap(self.int_things, forKey: preferCamelCase ? "intThings" : "int_things")
        }
        if includeDefaults || !self.string_ints.isEmpty {
            try container.encodeProtoMap(self.string_ints, forKey: preferCamelCase ? "stringInts" : "string_ints")
        }
        if includeDefaults || !self.int_things_two.isEmpty {
            try container.encodeProtoMap(self.int_things_two, forKey: preferCamelCase ? "intThingsTwo" : "int_things_two")
        }
    }

}
#endif

/**
 * Subtypes within MappyTwo
 */
extension MappyTwo {

    public enum ValueEnum : Int32, CaseIterable, Proto2Enum {

        case DEFAULT = 0
        case FOO = 1
        case BAR = 2

        public var description: String {
            switch self {
            case .DEFAULT: return "DEFAULT"
            case .FOO: return "FOO"
            case .BAR: return "BAR"
            }
        }

    }

}

extension MappyTwo.ValueEnum : Sendable {
}
