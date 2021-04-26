CREATE VIEW [dbo].[BooksReport] AS
SELECT [dbo].Books.Name as book_name,
	   concat([dbo].Authors.Name) as author_name,
	   [dbo].Publishers.Name as publish_name
from Books left join Publishers on Publishers.Id = Books.PublisherId
left join Authors on (select Authors.Id from AuthorsBooks where AuthorsBooks.BookId = Books.Id) = Authors.Id





