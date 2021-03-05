// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: internal/v2/risk_calculation_parameters.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

/// This file is auto-generated, DO NOT make any changes here

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct SAP_Internal_V2_RiskCalculationParameters {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var minutesAtAttenuationFilters: [SAP_Internal_V2_MinutesAtAttenuationFilter] = []

  var trlFilters: [SAP_Internal_V2_TrlFilter] = []

  var minutesAtAttenuationWeights: [SAP_Internal_V2_MinutesAtAttenuationWeight] = []

  var normalizedTimePerEwtoRiskLevelMapping: [SAP_Internal_V2_NormalizedTimeToRiskLevelMapping] = []

  var normalizedTimePerDayToRiskLevelMapping: [SAP_Internal_V2_NormalizedTimeToRiskLevelMapping] = []

  var trlEncoding: SAP_Internal_V2_TransmissionRiskLevelEncoding {
    get {return _trlEncoding ?? SAP_Internal_V2_TransmissionRiskLevelEncoding()}
    set {_trlEncoding = newValue}
  }
  /// Returns true if `trlEncoding` has been explicitly set.
  var hasTrlEncoding: Bool {return self._trlEncoding != nil}
  /// Clears the value of `trlEncoding`. Subsequent reads from it will return its default value.
  mutating func clearTrlEncoding() {self._trlEncoding = nil}

  var transmissionRiskLevelMultiplier: Double = 0

  var transmissionRiskValueMapping: [SAP_Internal_V2_TransmissionRiskValueMapping] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _trlEncoding: SAP_Internal_V2_TransmissionRiskLevelEncoding? = nil
}

struct SAP_Internal_V2_Range {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The lower limit of the range
  var min: Double = 0

  /// True if `min` is not part of the range, false otherwise
  var minExclusive: Bool = false

  /// The upper limit of the range
  var max: Double = 0

  /// True if `max` is not part of the range, false otherwise
  var maxExclusive: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct SAP_Internal_V2_MinutesAtAttenuationFilter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var attenuationRange: SAP_Internal_V2_Range {
    get {return _attenuationRange ?? SAP_Internal_V2_Range()}
    set {_attenuationRange = newValue}
  }
  /// Returns true if `attenuationRange` has been explicitly set.
  var hasAttenuationRange: Bool {return self._attenuationRange != nil}
  /// Clears the value of `attenuationRange`. Subsequent reads from it will return its default value.
  mutating func clearAttenuationRange() {self._attenuationRange = nil}

  var dropIfMinutesInRange: SAP_Internal_V2_Range {
    get {return _dropIfMinutesInRange ?? SAP_Internal_V2_Range()}
    set {_dropIfMinutesInRange = newValue}
  }
  /// Returns true if `dropIfMinutesInRange` has been explicitly set.
  var hasDropIfMinutesInRange: Bool {return self._dropIfMinutesInRange != nil}
  /// Clears the value of `dropIfMinutesInRange`. Subsequent reads from it will return its default value.
  mutating func clearDropIfMinutesInRange() {self._dropIfMinutesInRange = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _attenuationRange: SAP_Internal_V2_Range? = nil
  fileprivate var _dropIfMinutesInRange: SAP_Internal_V2_Range? = nil
}

struct SAP_Internal_V2_TrlFilter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var dropIfTrlInRange: SAP_Internal_V2_Range {
    get {return _dropIfTrlInRange ?? SAP_Internal_V2_Range()}
    set {_dropIfTrlInRange = newValue}
  }
  /// Returns true if `dropIfTrlInRange` has been explicitly set.
  var hasDropIfTrlInRange: Bool {return self._dropIfTrlInRange != nil}
  /// Clears the value of `dropIfTrlInRange`. Subsequent reads from it will return its default value.
  mutating func clearDropIfTrlInRange() {self._dropIfTrlInRange = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _dropIfTrlInRange: SAP_Internal_V2_Range? = nil
}

struct SAP_Internal_V2_MinutesAtAttenuationWeight {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var attenuationRange: SAP_Internal_V2_Range {
    get {return _attenuationRange ?? SAP_Internal_V2_Range()}
    set {_attenuationRange = newValue}
  }
  /// Returns true if `attenuationRange` has been explicitly set.
  var hasAttenuationRange: Bool {return self._attenuationRange != nil}
  /// Clears the value of `attenuationRange`. Subsequent reads from it will return its default value.
  mutating func clearAttenuationRange() {self._attenuationRange = nil}

  var weight: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _attenuationRange: SAP_Internal_V2_Range? = nil
}

struct SAP_Internal_V2_NormalizedTimeToRiskLevelMapping {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var normalizedTimeRange: SAP_Internal_V2_Range {
    get {return _normalizedTimeRange ?? SAP_Internal_V2_Range()}
    set {_normalizedTimeRange = newValue}
  }
  /// Returns true if `normalizedTimeRange` has been explicitly set.
  var hasNormalizedTimeRange: Bool {return self._normalizedTimeRange != nil}
  /// Clears the value of `normalizedTimeRange`. Subsequent reads from it will return its default value.
  mutating func clearNormalizedTimeRange() {self._normalizedTimeRange = nil}

  var riskLevel: SAP_Internal_V2_NormalizedTimeToRiskLevelMapping.RiskLevel = .unspecified

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum RiskLevel: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unspecified // = 0
    case low // = 1
    case high // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .unspecified
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .low
      case 2: self = .high
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .low: return 1
      case .high: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  fileprivate var _normalizedTimeRange: SAP_Internal_V2_Range? = nil
}

#if swift(>=4.2)

extension SAP_Internal_V2_NormalizedTimeToRiskLevelMapping.RiskLevel: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [SAP_Internal_V2_NormalizedTimeToRiskLevelMapping.RiskLevel] = [
    .unspecified,
    .low,
    .high,
  ]
}

#endif  // swift(>=4.2)

struct SAP_Internal_V2_TransmissionRiskLevelEncoding {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var infectiousnessOffsetStandard: Int32 = 0

  var infectiousnessOffsetHigh: Int32 = 0

  var reportTypeOffsetRecursive: Int32 = 0

  var reportTypeOffsetSelfReport: Int32 = 0

  var reportTypeOffsetConfirmedClinicalDiagnosis: Int32 = 0

  var reportTypeOffsetConfirmedTest: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct SAP_Internal_V2_TransmissionRiskValueMapping {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var transmissionRiskLevel: Int32 = 0

  var transmissionRiskValue: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "SAP.internal.v2"

extension SAP_Internal_V2_RiskCalculationParameters: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RiskCalculationParameters"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "minutesAtAttenuationFilters"),
    2: .same(proto: "trlFilters"),
    3: .same(proto: "minutesAtAttenuationWeights"),
    4: .same(proto: "normalizedTimePerEWToRiskLevelMapping"),
    5: .same(proto: "normalizedTimePerDayToRiskLevelMapping"),
    6: .same(proto: "trlEncoding"),
    7: .same(proto: "transmissionRiskLevelMultiplier"),
    8: .same(proto: "transmissionRiskValueMapping"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.minutesAtAttenuationFilters) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.trlFilters) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.minutesAtAttenuationWeights) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.normalizedTimePerEwtoRiskLevelMapping) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.normalizedTimePerDayToRiskLevelMapping) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._trlEncoding) }()
      case 7: try { try decoder.decodeSingularDoubleField(value: &self.transmissionRiskLevelMultiplier) }()
      case 8: try { try decoder.decodeRepeatedMessageField(value: &self.transmissionRiskValueMapping) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.minutesAtAttenuationFilters.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.minutesAtAttenuationFilters, fieldNumber: 1)
    }
    if !self.trlFilters.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.trlFilters, fieldNumber: 2)
    }
    if !self.minutesAtAttenuationWeights.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.minutesAtAttenuationWeights, fieldNumber: 3)
    }
    if !self.normalizedTimePerEwtoRiskLevelMapping.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.normalizedTimePerEwtoRiskLevelMapping, fieldNumber: 4)
    }
    if !self.normalizedTimePerDayToRiskLevelMapping.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.normalizedTimePerDayToRiskLevelMapping, fieldNumber: 5)
    }
    if let v = self._trlEncoding {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if self.transmissionRiskLevelMultiplier != 0 {
      try visitor.visitSingularDoubleField(value: self.transmissionRiskLevelMultiplier, fieldNumber: 7)
    }
    if !self.transmissionRiskValueMapping.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.transmissionRiskValueMapping, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_V2_RiskCalculationParameters, rhs: SAP_Internal_V2_RiskCalculationParameters) -> Bool {
    if lhs.minutesAtAttenuationFilters != rhs.minutesAtAttenuationFilters {return false}
    if lhs.trlFilters != rhs.trlFilters {return false}
    if lhs.minutesAtAttenuationWeights != rhs.minutesAtAttenuationWeights {return false}
    if lhs.normalizedTimePerEwtoRiskLevelMapping != rhs.normalizedTimePerEwtoRiskLevelMapping {return false}
    if lhs.normalizedTimePerDayToRiskLevelMapping != rhs.normalizedTimePerDayToRiskLevelMapping {return false}
    if lhs._trlEncoding != rhs._trlEncoding {return false}
    if lhs.transmissionRiskLevelMultiplier != rhs.transmissionRiskLevelMultiplier {return false}
    if lhs.transmissionRiskValueMapping != rhs.transmissionRiskValueMapping {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SAP_Internal_V2_Range: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Range"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "min"),
    2: .same(proto: "minExclusive"),
    3: .same(proto: "max"),
    4: .same(proto: "maxExclusive"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.min) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.minExclusive) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.max) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.maxExclusive) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.min != 0 {
      try visitor.visitSingularDoubleField(value: self.min, fieldNumber: 1)
    }
    if self.minExclusive != false {
      try visitor.visitSingularBoolField(value: self.minExclusive, fieldNumber: 2)
    }
    if self.max != 0 {
      try visitor.visitSingularDoubleField(value: self.max, fieldNumber: 3)
    }
    if self.maxExclusive != false {
      try visitor.visitSingularBoolField(value: self.maxExclusive, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_V2_Range, rhs: SAP_Internal_V2_Range) -> Bool {
    if lhs.min != rhs.min {return false}
    if lhs.minExclusive != rhs.minExclusive {return false}
    if lhs.max != rhs.max {return false}
    if lhs.maxExclusive != rhs.maxExclusive {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SAP_Internal_V2_MinutesAtAttenuationFilter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MinutesAtAttenuationFilter"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "attenuationRange"),
    2: .same(proto: "dropIfMinutesInRange"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._attenuationRange) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._dropIfMinutesInRange) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._attenuationRange {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._dropIfMinutesInRange {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_V2_MinutesAtAttenuationFilter, rhs: SAP_Internal_V2_MinutesAtAttenuationFilter) -> Bool {
    if lhs._attenuationRange != rhs._attenuationRange {return false}
    if lhs._dropIfMinutesInRange != rhs._dropIfMinutesInRange {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SAP_Internal_V2_TrlFilter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TrlFilter"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dropIfTrlInRange"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._dropIfTrlInRange) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._dropIfTrlInRange {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_V2_TrlFilter, rhs: SAP_Internal_V2_TrlFilter) -> Bool {
    if lhs._dropIfTrlInRange != rhs._dropIfTrlInRange {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SAP_Internal_V2_MinutesAtAttenuationWeight: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MinutesAtAttenuationWeight"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "attenuationRange"),
    2: .same(proto: "weight"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._attenuationRange) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.weight) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._attenuationRange {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.weight != 0 {
      try visitor.visitSingularDoubleField(value: self.weight, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_V2_MinutesAtAttenuationWeight, rhs: SAP_Internal_V2_MinutesAtAttenuationWeight) -> Bool {
    if lhs._attenuationRange != rhs._attenuationRange {return false}
    if lhs.weight != rhs.weight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SAP_Internal_V2_NormalizedTimeToRiskLevelMapping: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NormalizedTimeToRiskLevelMapping"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "normalizedTimeRange"),
    2: .same(proto: "riskLevel"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._normalizedTimeRange) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.riskLevel) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._normalizedTimeRange {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.riskLevel != .unspecified {
      try visitor.visitSingularEnumField(value: self.riskLevel, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_V2_NormalizedTimeToRiskLevelMapping, rhs: SAP_Internal_V2_NormalizedTimeToRiskLevelMapping) -> Bool {
    if lhs._normalizedTimeRange != rhs._normalizedTimeRange {return false}
    if lhs.riskLevel != rhs.riskLevel {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SAP_Internal_V2_NormalizedTimeToRiskLevelMapping.RiskLevel: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "LOW"),
    2: .same(proto: "HIGH"),
  ]
}

extension SAP_Internal_V2_TransmissionRiskLevelEncoding: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TransmissionRiskLevelEncoding"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "infectiousnessOffsetStandard"),
    2: .same(proto: "infectiousnessOffsetHigh"),
    3: .same(proto: "reportTypeOffsetRecursive"),
    4: .same(proto: "reportTypeOffsetSelfReport"),
    5: .same(proto: "reportTypeOffsetConfirmedClinicalDiagnosis"),
    6: .same(proto: "reportTypeOffsetConfirmedTest"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.infectiousnessOffsetStandard) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.infectiousnessOffsetHigh) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.reportTypeOffsetRecursive) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.reportTypeOffsetSelfReport) }()
      case 5: try { try decoder.decodeSingularInt32Field(value: &self.reportTypeOffsetConfirmedClinicalDiagnosis) }()
      case 6: try { try decoder.decodeSingularInt32Field(value: &self.reportTypeOffsetConfirmedTest) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.infectiousnessOffsetStandard != 0 {
      try visitor.visitSingularInt32Field(value: self.infectiousnessOffsetStandard, fieldNumber: 1)
    }
    if self.infectiousnessOffsetHigh != 0 {
      try visitor.visitSingularInt32Field(value: self.infectiousnessOffsetHigh, fieldNumber: 2)
    }
    if self.reportTypeOffsetRecursive != 0 {
      try visitor.visitSingularInt32Field(value: self.reportTypeOffsetRecursive, fieldNumber: 3)
    }
    if self.reportTypeOffsetSelfReport != 0 {
      try visitor.visitSingularInt32Field(value: self.reportTypeOffsetSelfReport, fieldNumber: 4)
    }
    if self.reportTypeOffsetConfirmedClinicalDiagnosis != 0 {
      try visitor.visitSingularInt32Field(value: self.reportTypeOffsetConfirmedClinicalDiagnosis, fieldNumber: 5)
    }
    if self.reportTypeOffsetConfirmedTest != 0 {
      try visitor.visitSingularInt32Field(value: self.reportTypeOffsetConfirmedTest, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_V2_TransmissionRiskLevelEncoding, rhs: SAP_Internal_V2_TransmissionRiskLevelEncoding) -> Bool {
    if lhs.infectiousnessOffsetStandard != rhs.infectiousnessOffsetStandard {return false}
    if lhs.infectiousnessOffsetHigh != rhs.infectiousnessOffsetHigh {return false}
    if lhs.reportTypeOffsetRecursive != rhs.reportTypeOffsetRecursive {return false}
    if lhs.reportTypeOffsetSelfReport != rhs.reportTypeOffsetSelfReport {return false}
    if lhs.reportTypeOffsetConfirmedClinicalDiagnosis != rhs.reportTypeOffsetConfirmedClinicalDiagnosis {return false}
    if lhs.reportTypeOffsetConfirmedTest != rhs.reportTypeOffsetConfirmedTest {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SAP_Internal_V2_TransmissionRiskValueMapping: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TransmissionRiskValueMapping"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "transmissionRiskLevel"),
    2: .same(proto: "transmissionRiskValue"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.transmissionRiskLevel) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.transmissionRiskValue) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.transmissionRiskLevel != 0 {
      try visitor.visitSingularInt32Field(value: self.transmissionRiskLevel, fieldNumber: 1)
    }
    if self.transmissionRiskValue != 0 {
      try visitor.visitSingularDoubleField(value: self.transmissionRiskValue, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SAP_Internal_V2_TransmissionRiskValueMapping, rhs: SAP_Internal_V2_TransmissionRiskValueMapping) -> Bool {
    if lhs.transmissionRiskLevel != rhs.transmissionRiskLevel {return false}
    if lhs.transmissionRiskValue != rhs.transmissionRiskValue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
