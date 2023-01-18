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

actor challenge2 {
    // Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
    // average_array(array : [Int]) -> async Int.
    public shared query func average_array(array : [Int]) : async Int {
        var sum : Int = 0;
        for (i in array.vals()) {
            sum += i;
        };
        return sum / array.size();
    };

    // Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
    // count_character(t : Text, c : Char) -> async Nat
    public shared query func count_character(t : Text, c : Char) : async Text {

        var count : Nat = 0;
        let looper = t.chars();
        for (i in looper) {
            if (i == c) {
                count += 1;
            };
        };
        return Nat.toText(count);

    };

    //convert a to char to test vals
    public shared query func getChar() : async Char {
        return 'a';

    };

    // Write a function factorial that takes a natural number n and returns the factorial of n.
    // factorial(n : Nat) ->  async Nat

    // ex of a factorial 5! = 5 * 4 * 3 * 2 * 1 = 120

    public shared query func factorial(n : Nat) : async Nat {
        var result : Nat = 1;
        var count = n;
        while (count > 0) {
            result *= count;
            count := count - 1;
        };
        return result;
    };

    // Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
    // number_of_words(t : Text) -> async Nat
    public shared query func number_of_words(t : Text) : async Nat {
        var wordCount : Nat = 0;

        //check for spaces
        let looper = t.chars();
        for (i in looper) {
            if (i == ' ') {
                wordCount += 1;
            };
        };

        //can be imporoved by checking for a space first or non words, but this is the idea
        return wordCount + 1;
    };

    // Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
    // find_duplicates(a : [Nat]) -> async [Nat]
    public shared query func find_duplicates(a : [Nat]) : async [Nat] {
        type Buffer = Buffer.Buffer<Nat>;
        let buffer : Buffer = Buffer.fromArray(a);
        var result : [Nat] = [];
        let resultBuffer : Buffer = Buffer.fromArray(result);

        let length = a.size();

        for (i in a.vals()) {
            var count = 0;
            for (j in a.vals()) {
                if (i == j) {
                    count += 1;
                };
            };
            if (count > 1) {
                resultBuffer.add(i);
            };
        };
        return resultBuffer.toArray();

    };

    // Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
    // convert_to_binary(n : Nat) -> async Text

    //first how to binary...👀
    // How to Convert 10 in Binary?
    // Step 1: Divide 10 by 2. Use the integer quotient obtained in this step as the dividend for the next step. Repeat the process until the quotient becomes 0.
    // source: https://www.cuemath.com/numbers/10-in-binary/

    public shared func convert_to_binary(n : Nat) : async Text {

        var result : Text = "";
        var quotient = n;

        while (quotient > 0) {
            result := result # Nat.toText(quotient % 2);
            quotient := quotient / 2;
        };
        return result;
    };

};
