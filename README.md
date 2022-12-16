# PaScaL_TDMA_CUDA

Parallel and Scalable Library for TriDiagonal Matrix Algorithm with CUDA 

PaScaL_TDMA_CUDA is a CUDA implementation of PaScaL_TDMA, which accelerates to solve many tridiagonal systems in multi-dimensional partial differential equations on GPU.
It adopts the pipeline copy within the shared memory for the forward elemination and backward substitution procudures of TDMA to reduce global memory access.
For the main algorithm of PaScaL_TDMA, see also https://github.com/MPMC-Lab/PaScaL_TDMA.

# Major changes

- CUDA implementation for modified Thomas algorithm and sequential TDMA for the reduced system.
- Use of 3-D arrays for the practical applications 
- Extensive use of CUDA threads more than in a single dimension with 3-D array.
- Depreication on functions for single tridiagonal matrix as they are rarely used for three-dimensional problems.

# Authors

- Mingyu Yang (yang926@yonsei.ac.kr), Multi-Physics Modeling and Computation Lab., Yonsei University
- Ji-Hoon Kang (jhkang@kisti.re.kr), Korea Institute of Science and Technology Information
- Ki-Ha Kim (k-kiha@yonsei.ac.kr), Multi-Physics Modeling and Computation Lab., Yonsei University
- Jung-Il Choi (jic@yonsei.ac.kr), Multi-Physics Modeling and Computation Lab., Yonsei University

# Cite

Please use the following bibtex, when you refer to this project.

    @article{kkpc2020,
        title = "PaScaL_TDMA: A library of parallel and scalable solvers for massive tridiagonal system",
        author = "Kim, Kiha and Kang, Ji-Hoon and Pan, Xiaomin and Choi, Jung-Il",
        journal = "Computer Physics Communications",
        volume = "260",
        pages = "107722",
        year = "2021",
        issn = "0010-4655",
        doi = "https://doi.org/10.1016/j.cpc.2020.107722"
    }

    @misc{PaScaL_TDMA2019,
        title  = "Parallel and Scalable Library for TriDiagonal Matrix Algorithm",
        author = "Yang, Mingyu and Kang, Ji-Hoon and Kim, Kiha and Choi, Jung-Il",
        url    = "https://github.com/MPMC-Lab/PaScaL_CUDA_TDMA",
        year   = "2023"
    }

# References

For more information, please the reference paper and [Multi-Physics Modeling and Computation Lab.](https://www.mpmc.yonsei.ac.kr/)

# Folder structure

- `src`     : source files of PaScaL_CUDA_TDMA. 
- `example` : source files of an example problem for 3D heat-transfer equation.
- `timer`   : source files of timer module
- `include` : header files are created after building
- `lib`     : a static library of PaScaL_CUDA_TDMA is are created after building
- `doc`     : documentation
- `run`     : an executable binary file for the example problem is created after building.

# Building and running

- The code requires NVID HPC SDK 21.1 or higher. 
- To compile and build the code, use the `Makefile` and `Makefile.inc` as reference. Edit the compile options in `Makefile.inc`.
- A executable binary file will be built in `run` folder. Edit and use the `PARA_INPUT.inp` file for input control.
- `mpi_gpu.sh` is provided as reference for slurm run.