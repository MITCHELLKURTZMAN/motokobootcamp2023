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
import Option "mo:base/Option";

actor Challenge4 {

    type List<T> = List.List<T>;
    //    Write a function unique that takes a list l of type List and returns a new list with all duplicate elements removed.
    // unique<T> : (l : List<T>, equal: (T,T) -> Bool) -> List<T>;
    func isEq(x : Nat, y : Nat) : Bool { x == y };

    func unique(l : List<Nat>, equal : (Nat, Nat) -> Bool) : List<Nat> {

        var i = 0;
        var list : List.List<Nat> = List.nil<Nat>();
        var len = List.size<Nat>(l);

        let l1 = List.nil<Nat>();
        let l2 = List.push<Nat>(2, l1);
        let l3 = List.push<Nat>(3, l2);

        return l3;
    };

    //test

    //     Write a function reverse that takes l of type List and returns the reversed list.
    // reverse<T> : (l : List<T>) -> List<T>;

    func reverse<T>(l : List<T>) : List<T> {
        let reverse = List.reverse<T>(l);
        return reverse;
    };

    //test
    public shared func testReverse() : async List<Nat> {
        var list : List.List<Nat> = List.nil<Nat>();

        //values are pre-pended with push so order is actually 8,7,6
        list := List.push<Nat>(6, list);
        list := List.push<Nat>(7, list);
        list := List.push<Nat>(8, list);

        let result = reverse(list);

        return result;
    };

    // Write a function is_anonymous that takes no arguments but returns a Boolean indicating if the caller is anonymous or not.
    // is_anynomous : () -> async Bool;

    public shared ({ caller }) func is_anonymous() : async Bool {
        return (Principal.isAnonymous(caller));
    };

    // Write a function find_in_buffer that takes two arguments, buf of type Buffer and val of type T, and returns the index of the first occurrence of "val" in "buf".
    //find_in_buffer<T> :  (buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool) -> Nat

    func find_in_buffer<T>(buf : Buffer.Buffer<T>, val : T, equal : (T, T) -> Bool) : async Nat {
        let len = buf.size();
        var i = 0;
        while (i < len) {
            if (equal(buf.get(i), val)) {
                return i;
            };
            i += 1;
        };
        return i;
    };

    //test
    public shared func test_find_in_buffer() : async Nat {
        var buf = Buffer.Buffer<Nat>(0);
        buf.add(3);
        buf.add(2);
        buf.add(3);

        let val = Nat;
        let equal = (Nat, Nat);
        let result = await find_in_buffer(buf, 2, Nat.equal);
        return result;
    };

    // Take a look at the code we've seen before in this guide:
    // Add a function called get_usernames that will return an array of tuples (Principal, Text) which contains all the entries in usernames.
    // get_usernames : () -> async [(Principal, Text)];

    let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public shared ({ caller }) func add_username(name : Text) : async () {
        usernames.put(caller, name);
    };

    public query func get_usernames() : async [(Principal, Text)] {
        return (Iter.toArray(usernames.entries()));
    };

};
