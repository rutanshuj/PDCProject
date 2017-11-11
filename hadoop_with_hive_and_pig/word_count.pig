lines = LOAD '/user/dir4/hive_bundle/mr_test.txt' AS (line:chararray);
words = FOREACH lines GENERATE FLATTEN(TOKENIZE(line)) as word;
filtered_words= FILTER words by (word =='hello') OR (word == 'world');
grouped = GROUP filtered_words BY word;
hw_count = FOREACH grouped GENERATE group, COUNT(filtered_words);
dump hw_count;
