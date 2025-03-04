// Copyright © 2020 Saleem Abdulrasool <compnerd@compnerd.org>. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause

extension Metadata.Tables {
public final class MethodSemantics: Table {
  public static var number: Int { 24 }

  /// Record Layout
  ///   Semantics (2-byte bitmask of MethodSemanticsAttributes)
  ///   Method (MethodDef Index)
  ///   Association (HasSemantics Coded Index)
  public static let columns: [Column] = [
    Column(name: "Semantics", type: .constant(2)),
    Column(name: "Method", type: .index(.simple(MethodDef.self))),
    Column(name: "Association", type: .index(.coded(HasSemantics.self))),
  ]

  public let rows: UInt32
  public let data: ArraySlice<UInt8>

  public required init(rows: UInt32, data: ArraySlice<UInt8>) {
    self.rows = rows
    self.data = data
  }
}
}
