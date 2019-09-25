# Introduction

_This repository contains the materials for the "Q# Language" workshop, presented at 2019 Quantum Languages Design and Implementation summer school in Verona, Italy._


Q# (Q-sharp) is a domain-specific and [open-sourced](https://github.com/microsoft/qsharp-compiler) programming language, part of [Microsoft's Quantum Development Kit (QDK)](https://docs.microsoft.com/en-us/quantum/), used for expressing quantum algorithms. It is to be used for writing subroutines that execute on an adjunct quantum processing unit (QPU), under the control of a classical host program and computer.

Most of the exercises for this workshop are taken from the [Quantum Katas](https://github.com/microsoft/QuantumKatas). The [Quantum Katas](https://github.com/microsoft/QuantumKatas) are a series of self-paced tutorials aimed at teaching you elements of quantum computing and Q# programming at the same time. The entire set of quantum katas are available online as an open-source project at https://github.com/microsoft/QuantumKatas.

Some other exercises are taken from [Microsoft's Quantum GitHub repository](https://github.com/microsoft/Quantum). This open source repository has a vast library of programs that show how to implement quantum algorithms using Q#.


## List of Exercises ##


* **[Introduction](./0.Intro/Intro.ipynb)**.
  This Jupyter Notebook uses the Q# Jupyter kernel to introduce the core elements of the Q# language.
* **[Basic quantum computing gates](./1.BasicGates/BasicGates.ipynb)**.
  This kata focuses on main single-qubit and multi-qubit gates used in quantum computing. 
* **[Deutsch–Jozsa algorithm](./2.DeutschJozsaAlgorithm/DeutschJozsaAlgorithmTutorial.ipynb)**.
  This tutorial teaches you to implement classical functions and equivalent quantum oracles, 
  discusses the classical solution to the Deutsch–Jozsa problem, and introduces the Deutsch and Deutsch–Jozsa algorithms.
* **[Teleportation](./3.Teleport/Teleportation.ipynb)**.
  This kata walks you through the standard teleportation protocol and several variations.
* **[Grover's algorithm](./4.GroverSearch/GroversAlgorithm.ipynb)**.
  This kata introduces Grover's search algorithm and writing quantum oracles to be used with it.
* **[Solving SAT problems using Grover's algorithm](./5.SATSolver/SolveSATWithGrover.ipynb)**.
  This kata continues the exploration of Grover's search algorithm, using SAT problems as an example. It covers implementing quantum oracles based on the problem description instead of a hard-coded answer and using Grover's algorithm to solve problems with unknown number of solutions.
* **[Phase estimation](./6.PhaseEstimation/PhaseEstimation.ipynb)**.
  This kata covers phase estimation algorithms.
* **[Python Interop](./7.Chemistry/)**.
  Shows how to perform a chemistry simulation of H2 using the local quantum simulator and
  display the results graphically using Electron.
* **[Numerics Library](./8.Numerics/)**.
  Provides a samples on how to incorporate Q# programs into a C# classical host.
  In particular, it shows how to leverage Q# numerics library to create your own ModAdder.
* **[Python Interop](./9.Python/)**.
  Provides a couple of samples on how to incorporate Q# programs into Python scripts.
  The samples show the integration from both, a Python script and a Python Jupyter notebook.


# Code of Conduct <a name="code-of-conduct" /> #

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
