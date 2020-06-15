# clean cases
foamCleanTutorials
foamCleanPolyMesh
fluentMeshToFoam ripple.msh 
#extrudeMesh
createPatch -overwrite


# run solver 
rm -r 0
cp -r 0_orig 0
pimpleFoam | tee log.pimpleFoam 
pimpleFoam -postProcess -func sampleDict -time 
pimpleFoam -postProcess -func probesDict 


# plot results 

#gnuplot gnuplot/tauPlot


