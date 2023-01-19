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

// In your file called utils.mo: create a function called second_maximum that takes an array [Int] of integers and returns the second largest number in the array.
// second_maximum(array : [Int]) ->  Int;
module Utils {
    public func second_maximum(array : [Int]) : async Int {
        var max : Int = 0;
        var second_max : Int = 0;
        for (i in array.vals()) {
            if (i > max) {
                second_max := max;
                max := i;
            } else if (i > second_max) {
                second_max := i;
            };
        };
        second_max;
    };

    // In your file called utils.mo: create a function called remove_even that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
    // remove_event(array : [Nat]) -> [Nat];

    func remove_even(array : [Nat]) : [Nat] {
        var odd_array : [Nat] = [];
        let emptyBuffer = Buffer.fromArray<Nat>(odd_array);

        for (i in array.vals()) {
            if (i % 2 != 0) {
                emptyBuffer.add(i);
            };
        };

        Buffer.toArray<Nat>(emptyBuffer);
    };

    // In your file called utils.mo: write a function drop that takes 2 parameters: an array [T] and a Nat n. This function will drop the n first elements of the array and returns the remainder.
    // ⛔️ Do not use a loop.
    // drop<T> : (xs : [T], n : Nat) -> [T]

    //SEE main.mo for func and test, I was having trouble declaring [T] as public/async
    //Judging by this open request: https://github.com/dfinity/motoko/issues/2096  I decided it may not be possible to house drop in utils.
    //I raised a question in the discord

};
