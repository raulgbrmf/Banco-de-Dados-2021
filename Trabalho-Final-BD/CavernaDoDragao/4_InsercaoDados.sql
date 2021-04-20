INSERT INTO Categoria	(Nome_Categoria,	Descricao_Categoria)
VALUES 					("Basquete",		"Produtos de Basquete"),
						("Jiu-Jitsu",		"Produtos de Jiu-Jitsu"),
						("Futebol",			"Produtos de Futebol"),
						("Vôlei",			"Produtos de Vôlei"),
						("Tênis",			"Produtos de Tênis"),
						("Natação",			"Produtos de Natação"),
						("Corrida",			"Produtos de Corrida");


INSERT INTO Funcionario (Nome_Funcionario,	CPF_Funcionario)
VALUES 					("Usain Bolt",		"111.111.111-11"),
						("Roger Federer", 	"123.456.789-10"),
						("Roger Gracie", 	"101.010.101-01"),
						("Bill Gates", 		"404.404.404-40"),
						("Michael Jordan", 	"232.323.232-32");
		

INSERT INTO Cliente (Nome_Usuario,	Nome_Cliente,	CPF_Cliente,		Email_Cliente,			Data_Nascimento_Cliente)
VALUES				("Léo",			"Léo Marchiori","555.555.555-00",	"cliente5@email.com",	"01/01/1995"),
 					("Lucas", 		"Lucas Macedo",	"111.111.111-00",	"cliente1@email.com",	"01/01/1991"),
					("Cadu",		"Cadu Mattos",	"222.222.222-00",	"cliente2@email.com",	"01/01/1992"),
					("Junior",		"Junior Xavier","333.333.333-00",	"cliente3@email.com",	"01/01/1993"),
					("Raul",		"Raul Gabrich",	"444.444.444-00",	"cliente4@email.com",	"01/01/1994");


INSERT INTO Pedido	(Data_Pedido,	Cod_Cliente, 	Cod_Funcionario)
VALUES				("01/01/2021",	"1", 			"5"),
					("02/01/2021",	"2", 			"4"),
					("03/01/2021",	"3", 			"3"),
					("04/01/2021",	"4", 			"2"),
					("05/01/2021",	"5", 			"1");
		

INSERT INTO PedidoItem	(Quant_Pedido,	Cod_Pedido,	Cod_Produto)
VALUES					("2",			"1",		"1"),
						("1",			"1",		"2"),
						("1",			"1",		"7"),
						("1",			"1",		"10"),
						("1",			"1",		"12"),
						("1",			"2",		"8"),
						("1",			"2",		"10"),
						("1",			"2",		"11"),
						("4",			"4",		"4"),
						("55",			"5",		"1");


INSERT INTO Produto (Quant_Estoque , 	Data_Fabricacao, 	Valor_Unitario, Nome_Produto, 		Descricao_Produto, 		Cod_Funcionario, Cod_Categoria)
VALUES				("10", 				"01/01/2021", 		"50", 			"Air Jordan", 		"Produto de Basquete", 	"1", 			 "1"),
					("10", 				"02/01/2021", 		"20", 			"Kimono Shoyoroll", "Produto de Jiu-Jitsu", "2", 			 "2"),
					("10", 				"03/01/2021", 		"30", 			"Chuteira Nike", 	"Produto de Futebol", 	"3", 			 "3"),
					("10", 				"04/01/2021", 		"40", 			"Tênis Asics", 		"Produto de Vôlei", 	"4", 			 "4"),
					("10",				"05/01/2021", 		"10", 			"Raquete Wilson", 	"Produto de Tênis", 	"5", 			 "5"),
					("10", 				"06/01/2021", 		"50", 			"Óculos Speedo",	"Produto de Natação", 	"1", 			 "6"),
					("10", 				"07/01/2021", 		"10", 			"Relógio Polar", 	"Produto de Corrida", 	"2", 			 "7"),
					("10", 				"12/01/2021", 		"20", 			"Kimono Koral", 	"Produto de Jiu-Jitsu", "2", 			 "2"),
					("10", 				"13/01/2021", 		"30", 			"Chuteira Adidas", 	"Produto de Futebol", 	"3", 			 "3"),
					("10", 				"14/01/2021", 		"40", 			"Tênis Mizuno", 	"Produto de Vôlei", 	"4", 			 "4"),
					("10", 				"15/01/2021", 		"10", 			"Raquete Head", 	"Produto de Tênis", 	"5", 			 "5"),
					("10", 				"16/01/2021", 		"50", 			"Óculos Adidas",	"Produto de Natação", 	"1", 			 "6"),
					("10", 				"17/01/2021", 		"10", 			"Relógio Nike", 	"Produto de Corrida", 	"2", 			 "7");

		
