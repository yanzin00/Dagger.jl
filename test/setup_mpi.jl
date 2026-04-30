if USE_MPI
    using MPIPreferences 
    # Configure to use JLL binary. This writes to the active Project.toml or LocalPreferences.toml.
    MPIPreferences.use_jll_binary("MPICH_jll"; export_prefs=true)

    # Load MPI to trigger precompilation on the master process
    using MPI

    # Install mpiexecjl wrapper
    MPI.install_mpiexecjl(; destdir=joinpath(DEPOT_PATH[1], "bin"), force=true)
end

