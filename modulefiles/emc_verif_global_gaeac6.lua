help([[
Load environment to run EMC_verif-global on Gaea C5 using Intel
]])

prepend_path("MODULEPATH", "/sw/rdtn/modulefiles")
load("hsi")

prepend_path("MODULEPATH", "/ncrc/proj/epic/spack-stack/spack-stack-1.6.0/envs/unified-env/install/modulefiles/Core")


stack_intel_ver=os.getenv("stack_intel_ver") or "2023.2.0"
load(pathJoin("stack-intel", stack_intel_ver))

stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "8.1.28"
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))

cmake_ver=os.getenv("cmake_ver") or "3.23.1"
load(pathJoin("cmake", cmake_ver))


netcdf_c_ver=os.getenv("netcdf_c_ver") or "4.9.2"
load(pathJoin("netcdf-c", netcdf_c_ver))

netcdf_fortran_ver=os.getenv("netcdf_fortran_ver") or "4.6.1"
load(pathJoin("netcdf-fortran", netcdf_fortran_ver))

nccmp_ver=os.getenv("nccmp_ver") or "1.9.0.1"
load(pathJoin("nccmp", nccmp_ver))

esmf_ver=os.getenv("esmf_ver") or "8.6.0"
load(pathJoin("esmf", esmf_ver))

nco_ver=os.getenv("nco_ver") or "5.0.6"
load(pathJoin("nco", nco_ver))

grads_ver=os.getenv("grads_ver","2.2.3")
load(pathJoin("grads",grads_ver))

imagemagick_ver=os.getenv("imagemagick_ver","7.1.1-11")
load(pathJoin("imagemagick",imagemagick_ver))

prepend_path("MODULEPATH", "/scratch2/NCEPDEV/nwprod/hpc-stack/libs/hpc-stack/modulefiles/stack")

hpc_ver=os.getenv("hpc_ver") or "1.1.0"
load(pathJoin("hpc", hpc_ver))

hpc_intel_ver=os.getenv("hpc_intel_ver") or "2022.1.2"
load(pathJoin("hpc-intel", hpc_intel_ver))

hpc_impi_ver=os.getenv("hpc_impi_ver") or "2018.0.4"
load(pathJoin("hpc-impi", impi_ver))

prod_util_ver=os.getenv("prod_util_ver") or "1.2.2"
load(pathJoin("prod_util", prod_util_ver))

grib_util_ver=os.getenv("grib_util_ver") or "1.2.3"
load(pathJoin("grib_util", grib_util_ver))

prepend_path("MODULEPATH", "/contrib/anaconda/modulefiles")

anaconda_ver=os.getenv("anaconda_ver") or "latest"
load(pathJoin("anaconda", anaconda_ver))

prepend_path("MODULEPATH", "/contrib/met/modulefiles")

met_ver=os.getenv("met_ver") or "9.1"
load(pathJoin("met", met_ver))

prepend_path("MODULEPATH", "/contrib/METplus/modulefiles")

metplus_ver=os.getenv("metplus_ver") or "3.1"
load(pathJoin("metplus", metplus_ver))
