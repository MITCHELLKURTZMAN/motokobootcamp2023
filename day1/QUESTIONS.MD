#### How much is the current memory capacity of a canister?

48GBgb, but be careful, if using pre-post upgrade methods, you are limited to message size 2gb.

#### What is the issue with the following code sample?

```
actor {
let counter : Nat = 0;
public func increment_counter() : async () {
counter := counter + 1;
};
}
```

counter should be a var to enable modifying, for example `var counter : Nat = 0;`

#### What is the issue with the following code sample?

```
actor {
var message : Text = 0;

public query func change_message(new_message : Text) : async () {
message := new_message;
return;
};

public query func see_message() : async Text {
return(message);
};
}
```

var message is initially set as type text, but the default value is a Nat, A proper default Text could be just "" for example `var message : Text = "";`

#### False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

False
