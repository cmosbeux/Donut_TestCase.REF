all: mesh relax_1km SL_1km

mesh:
	ElmerGrid 1 2 MESH.GRD/rectangle_500m.grd -metis 8 0 -autoclean
	ElmerGrid 1 2 MESH.GRD/rectangle_1km.grd  -metis 8 0 -autoclean
	ElmerGrid 1 2 MESH.GRD/rectangle_2km.grd 
	#ElmerGrid 1 2 rectangle.grd -partdual -metiskway 2 -halo
relax_1km:
	mv ./MESH.GRD/rectangle_1km .
	sh Relaxation.sh parallel 2 1km
SL_1km:
	sh SL_advection.sh parallel 2 1km

