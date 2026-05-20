if USE_MPI
    # We assume MPI is already configured via MPIPreferences (e.g., in CI workflow).
    # Loading it here triggers precompilation if necessary.
    using MPI

    # Install the mpiexecjl wrapper to the depot's bin directory.
    # This wrapper is used to launch Julia processes with the correct MPI environment.
    MPI.install_mpiexecjl(; destdir=joinpath(DEPOT_PATH[1], "bin"), force=true)
end

