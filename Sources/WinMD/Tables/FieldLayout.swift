// Copyright © 2020 Saleem Abdulrasool <compnerd@compnerd.org>. All rights reserved.
// SPDX-License-Identifier: BSD-3-Clause

extension Metadata.Tables {
public final class FieldLayout: Table {
  public static var number: Int { 16 }

  /// Record Layout
  ///   Offset (4-byte constant)
  ///   Field (Field Index)
  public static let columns: [Column] = [
    Column(name: "Offset", type: .constant(4)),
    Column(name: "Field", type: .index(.simple(FieldDef.self))),
  ]

  public let rows: UInt32
  public let data: ArraySlice<UInt8>

  public required init(rows: UInt32, data: ArraySlice<UInt8>) {
    self.rows = rows
    self.data = data
  }
}
}
