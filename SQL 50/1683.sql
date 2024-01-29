-- Invalid Tweets
SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(tweet_text) > 15;