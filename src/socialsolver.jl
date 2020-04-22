__precompile__()

module socialsolver

    # stdlib (standard libraries)
    using Dates
    using Distributed
    using LinearAlgebra # for LowerTriangular, logdet, diag
    using Printf: @printf, @sprintf
    using Random
    using Statistics: mean, quantile, median

    # other libraries, indicate compatible version in Project.toml
    using CSV
    using DataFrames
    using DelimitedFiles
    using JuMP
    using Cbc
    using GLPK
    using JLD
    using MathOptInterface
    using Distributions

    import Base: show
    import GLM: ftest

    const DEBUGC = false # even more debug messages
    global CHECKNET = false # for debugging only

    export ftest
    export
        ## Network Definition
        problem_glpk, 
        direct_glpk, 
        time_test, 
        welfare,
        mech_basic_cbc,
        data_gen,
        data_gen_direct

    include("solve.jl")
    include("gen.jl")
    include("x_t.jl")
end #module