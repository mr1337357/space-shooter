module wing()
{

}

module cab()
{
	points =
	[
		[0,1,0],[0,-1,0],[10,-5,0],[10,5,0],
		[3,1.5,1],[3,-1.5,1],
		[4,1.5,2],[4,-1.5,2],
		[10,4,2],[10,-4,2],
	];
	faces = 
	[
		[0,1,2,3],
		[1,0,4,5],
		[1,5,2],
		[0,3,4],
		[5,4,6,7],
		[5,7,2],
		[6,4,3],
		[7,6,8,9],
		[7,9,2],
		[8,6,3],
		[3,2,9,8],
	];
	polyhedron(points,faces);
}

cab();
