CREATE PROC UserViewByID
@Id int
AS
	SELECT *
	FROM Table_1
	WHERE Id = @Id