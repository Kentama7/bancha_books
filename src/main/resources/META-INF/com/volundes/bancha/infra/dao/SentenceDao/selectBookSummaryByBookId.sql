SELECT
  b.book_id,
  b.name,
  b.author,
  b.isbn,
  s.sentence_id,
  s.sentence,
  c.comment_id,
  c.name AS comment_name,
  c.comment,
  r.ruby_id,
  r.kanji,
  r.ruby
FROM
  book b
  INNER JOIN
    sentence s
	ON
	  b.book_id = s.book_id
  LEFT OUTER JOIN
    comment c
	ON
	  s.sentence_id = c.sentence_id
  LEFT OUTER JOIN
    ruby r
	ON
	  s.sentence_id = r.sentence_id
WHERE
  b.book_id = /* bookId */1