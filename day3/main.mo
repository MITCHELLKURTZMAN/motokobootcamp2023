// For the challenges of today you will have to change the habitual structure of your repository & instead of having a unique challenge.mo file you'll have three files: utils.mo, book.mo & main.mo.
// You can check the corresponding structure in the example repository.✅

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
import BookLib "book";
import Utils "utils";

actor Book {
    // In your file called book.mo create a custom type with at least 2 properties (title of type Text, pages of type Nat), import this type in your main.mo and create a variable that will store a book.

    type BookType = BookLib.BookType;

    var Book = ("The 4 Hour Work Week", 1000);

    // In main.mo import the type List from the Base Library and create a list that stores books.
    var bookList : List.List<BookType> = List.nil<BookType>();

    // In main.mo create a function called add_book that takes a book as parameter and returns nothing this function should add this book to your list.
    public shared func add_book(book : BookType) : async () {
        bookList := List.push<BookType>(book, bookList);

    };

    ///TESTING UTIL FUNCS///

    func drop<T>(split : [T], n : Nat) : [T] {
        let buffer = Buffer.fromArray<T>(split);
        let (buffer1, buffer2) = Buffer.split<T>(buffer, n);
        Buffer.toArray<T>(buffer2);
    };

    public shared func testDrop() : async [Nat] {
        let x = [1, 2, 3, 4, 5];
        let y = drop(x, 2);
        y;

    };

    func second_maximum(array : [Int]) : Int {
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
    public shared func testSecond_maximum() : async Int {
        let x = [1, 2, 3, 4, 5];
        let y = second_maximum(x);
        y;

    };

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

    public shared func testRemove_even() : async [Nat] {
        let x = [1, 2, 3, 4, 5];
        let y = remove_even(x);
        y;
    };

};
