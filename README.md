This test is built to check the performance of the Particle Advector with a 3D-Stokes flow.
For a better check, the performance should be tested at 1km resolution 

FOLDERS and ORGANISATION:
   - REF : contains the sif files for the simulation
   - MESH.GRD : contains the .grd files of the 2D domain at 2km, 1km and 500m resolution 
   - FUNCTIONS: contains the functions for the geometry, ...
   - SIMUS.* : will be created and contains the simulation files built from the REF files

The test can be run completely at 2km (serial or at 1km and 500 (parallel with 8 partitions). To run at 1 km, type only: make
