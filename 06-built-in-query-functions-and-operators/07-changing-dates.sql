-- SELECT membership_start + 7, membership_start
-- FROM memberships
SELECT (membership_start + INTERVAL '7 MONTH')::TIMESTAMP::DATE,
    membership_start
FROM memberships