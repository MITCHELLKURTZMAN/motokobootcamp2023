#### True or False: we can prevent the heap being erased during upgrades by using a stable heap.

false we need to use stable variables to utilize orthogonal persistence between upgrades

#### A.call() -> B.call() -> C How much time (or rounds of consensus) do we need to wait for an answer?

This depends, assuming '.call' is an update call, each will need to be confirmed by consensus. If the call is a query, then it will be answered at webspeed.

#### Is possible to realize an intercanister call in query mode?

It has been the topic of discussion for a while now, but it is not yet implemented. Currently you have to run update calls to other canisters.
