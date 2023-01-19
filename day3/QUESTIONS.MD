#### True or False: the Internet Computer has a unique public key that can be used to verify responses coming from any subnets.

True, the internet computer as a whole, has a public and private key allowing it to sign transactions and verify responses from any subnet.

#### True or False: when I realize an update call, the boundary node will participate in the consensus but not during query calls.

True, query calls are read-only and do not require consensus.

#### True or False: I can create a certified variable that will certify the response of the following actor:

```motoko
actor {
    public func hello(name : Text) : async Text {
        return ("hello # name");
    };
}
```

True, since the function is an update call, the response can be certified.
