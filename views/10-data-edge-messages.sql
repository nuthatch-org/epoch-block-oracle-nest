-- Canonical on-chain EBO transport messages. `payload` is retained unmodified so consumers can
-- verify or decode the packed DataEdge wire format without trusting a lossy intermediary.
CREATE VIEW ebo_data_edge_messages AS
SELECT
  tx_hash || '-' || CAST(log_index AS VARCHAR) AS id,
  block_number,
  block_timestamp AS timestamp,
  tx_hash,
  data AS payload
FROM data_edge__log;
