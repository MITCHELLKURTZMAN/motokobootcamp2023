#### is the heap memory saved when upgrading a canister? How much heap memory does a canister has?

The WASM heap is limtied to 4gb and is cleared when upgrading a canister.

#### How much accounts can a unique Principal own?

(nearly) unlimited

#### Can we safely upgrade a canister from interface A to interface B?

Interface A

```motoko
actor {
  public func greet(surname : Text, firstname : Text) : async Text {
    return "Hello" # firstname # surname # " !";
  };
}
```

Interface B

```motoko
actor {
  public func greet(firstname : Text) : async Text {
    return "Hello" # firstname # " !";
  };
}
```

Although this wouldn't lose any data since it appears none is stored, it would break this functionality for any canisters that are using the old interface because they would require one less argument (surname).
