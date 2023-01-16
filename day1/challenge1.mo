import Array "mo:base/Array";
import Buffer "mo:base/Buffer";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Float "mo:base/Float";
import HashMap "mo:base/HashMap";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import List "mo:base/List";
import Nat "mo:base/Nat";
import Nat32 "mo:base/Nat32";
import Prelude "mo:base/Prelude";
import Principal "mo:base/Principal";
import Result "mo:base/Result";
import Text "mo:base/Text";

actor Challenge1 {

    // Write a function multiply that takes two natural numbers and returns the product.
    // multiply(n : Nat, m : Nat) -> async Nat

    public query func multiply(n : Nat, m : Nat) : async Nat {
        var result = n * n;
        return result;
    };

    // Write a function volume that takes a natural number n and returns the volumte of a cube with side length n.
    // volume(n : Nat) -> async Nat

    public query func volume(n : Nat) : async Nat {
        var result = n * n * n;
        return result;
    };

    // Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.
    // hours_to_minutes(n : Nat) -> async Nat

    public query func hours_to_minutes(n : Nat) : async Nat {
        var result = n * 60;
        return result;
    };

    // Write two functions set_counter & get_counter .
    // set_counter sets the value of counter to n.
    // get_counter returns the current value of counter.
    // set_counter(n : Nat) -> async ()
    // get_counter() -> async Nat

    var counter : Nat = 0;

    public shared func set_counter(n : Nat) : async () {
        counter := n;
    };

    public shared query func get_counter() : async Nat {
        return counter;
    };

    // Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
    // test_divide(n: Nat, m : Nat) -> async Bool

    public query func test_divide(n : Nat, m : Nat) : async Bool {
        var result = m % n == 0;
        return result;
    };

    // Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
    // is_even(n : Nat) -> async Bool

    public query func is_even(n : Nat) : async Bool {
        var result = n % 2 == 0;
        return result;
    };

};
