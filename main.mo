// hesap makinesi
// değişkenler (let = > immutable, var => mutable)
// operatörler
// async metodu
// if condition
// canister => akıllı sözleşme

import Debug "mo:base/Debug";

actor Calculator {

  var cell : Int = 0;

  // Add.
  public func add(x : Int) : async Int {
    cell += x;
    //Debug.print(debug_show(cell));
    return cell;
  };

  // Subtract.
  public func sub(x : Int) : async Int {
    cell -= x;
    return cell;
  };

  // Multiply.
  public func mul(a : Int) : async Int {
    cell *= a;
    return cell;
  };

  // Divide.
  public func div(x : Int) : async ?Int {
    if (x == 0) {
      // 'null' encodes the division by zero error.
      return null;
    } else {
      cell /= x;
      return ?cell;
    };
  };

  // Clear the calculator and reset its cell to zero.
  public func resetCell() : async () {
    cell := 0;
  };
};
