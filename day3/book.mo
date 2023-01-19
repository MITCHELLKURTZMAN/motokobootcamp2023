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
type BookType = {
    title : Text;
    pages : Nat;
};

// In your file called book.mo create a custom type with at least 2 properties (title of type Text, pages of type Nat), import this type in your main.mo and create a variable that will store a book.

module {
    // In your file called book.mo create a function called create_book that takes two parameters: a title of type Text, and a number of pages of type Nat and returns a book. This function will create a new book based on the parameters passed and then read it before returning it.

    func create_book(title : Text, pages : Nat) : BookType {
        let book = {
            title = title;
            pages = pages;
        };
        book;
    };
};
