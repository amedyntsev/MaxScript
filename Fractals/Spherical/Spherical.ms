fileIn "../AttachObjects.ms"

iteration = 6
radius = 800
marker = 0
objs = #()

function create x y z m r i =
(
	obj = sphere()
	obj.radius = r
	obj.pos = [x,y,z]
	append objs obj
	
	if i == 0 then return 0
	
	if m != 4 then create (x + (r + r/2)) y z 1 (r/2) (i - 1)
	if m != 5 then create x (y + (r + r/2)) z 2 (r/2) (i - 1)
	if m != 6 then create x y (z + (r + r/2)) 3 (r/2) (i - 1)
	if m != 1 then create (x - (r + r/2)) y z 4 (r/2) (i - 1)
	if m != 2 then create x (y - (r + r/2)) z 5 (r/2) (i - 1)
	if m != 3 then create x y (z - (r + r/2)) 6 (r/2) (i - 1)
	
	if i == 4 then attachObjs objs
)

create 0 0 0 marker radius iteration