function attachObjs objects =
(
	j = 1
	count = objects.count
		
	undo off
	(
		while objects.count > 1 do
		(				
			if classof objects[j] != Editable_Poly then converttopoly objects[j]
				
			polyop.attach objects[j] objects[j+1]
			deleteItem objects (j+1)
				
			j += 1
				
			if (j + 1) > objects.count then j = 1
			
		)
	)
	return objects[1]
)