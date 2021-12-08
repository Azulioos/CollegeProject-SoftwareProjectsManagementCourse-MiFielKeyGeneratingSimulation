CREATE PROC Validar
@Id int,
@RFC varchar(10),
@Cer varchar(MAX),
@AKey varchar(MAX),
@Pass varchar(10)
AS
	IF @Id = 0
	BEGIN
		INSERT INTO Table_1(RFC, Cer, AKey, Pass)
		VALUES (@RFC, @Cer, @AKey, @Pass)
	END
	ELSE
	BEGIN
		UPDATE Table_1
		SET
			RFC = @RFC,
			Cer = @Cer,
			AKey = @AKey,
			Pass = @Pass

		WHERE Id = @Id

		
	END
