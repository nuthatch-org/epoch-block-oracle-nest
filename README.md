# Epoch Block Oracle nest

A Nuthatch nest for the Graph Epoch Block Oracle transport on Arbitrum One, replacing the on-chain
surface of deployment `QmeqJqJTZg3xqYaYhvc35JzyB7RBqEyJeexjTBDykvxNkJ`.

```sh
nuthatch init --from https://github.com/nightswatchhq/epoch-block-oracle-nest
```

`ebo_data_edge_messages` provides the canonical EventfulDataEdge payload, block, timestamp, and
transaction identity. It is installable as a raw, verifiable message feed now.

It is not yet an EBO semantic replacement: packed message decoding into epoch-block attestations
and fixed-block parity fixtures remain the release gate. The next implementation step is a
deterministic decoder for the EventfulDataEdge packed-message format, followed by state-fold and
fixed-block tests. The contract is
`0x633bb9790d7c4c59991cebd377c0ed6501a35ebe`, from block `53,564,458`; its ABI is vendored.
