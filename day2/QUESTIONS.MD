#### Who controls the ledger canister?

The NNS, or the SNS if it is an SNS ledger canister.

#### What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?

Subnet: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
Nodes: 16

#### I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

4+ years age a 1.25x bonus. All others between 0s and 4 years scale linearly between.

6 months disolve delay grants 1.06x voting power and 8yrs grants 2x voting power. All other durations scale linearly between.

So, 2 years age and 4 years dissolve delay grants 1.25 \* 1.24 ~ 1.56x voting power.

#### What is wrong with the following code?

```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };

}
```

This will need to `import Nat "mo:base/Nat";` to use the `Nat.toText` function.

#### What is wrong with the following code?

```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };

}
```

To show the immutable array, we do not need to use `var` in either of the type declarations.

#### What is wrong with the following code?

```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };

}
```

This code compiles and works.
