// Copyright © 2020 Saleem Abdulrasool <compnerd@compnerd.org>. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause

extension Metadata.Tables {
public final class NestedClass: Table {
  public static var number: Int { 41 }

  /// Record Layout
  ///   NestedClass (TypeDef Index)
  ///   EnclosingClass (TypeDef Index)
  public static let columns: [Column] = [
    Column(name: "NestedClass", type: .index(.simple(TypeDef.self))),
    Column(name: "EnclosingClass", type: .index(.simple(TypeDef.self))),
  ]

  public let rows: UInt32
  public let data: ArraySlice<UInt8>

  public required init(rows: UInt32, data: ArraySlice<UInt8>) {
    self.rows = rows
    self.data = data
  }
}
}
