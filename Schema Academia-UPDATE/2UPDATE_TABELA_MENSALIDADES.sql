UPDATE "Academia".mensalidades
	SET valor_mensal = valor_mensal - 30
	WHERE tipo_pagamento = 'Cartão de débito';
	
	-- para todos que pagaram em débito possuem um desconto de 30 no valor mensal e isso só poderá acontecer
	-- uma vez para cada cliente