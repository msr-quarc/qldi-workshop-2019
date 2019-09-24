# Python Integration demo #

This folder contains two demos:
- One that shows how to use the `qsharp.chemistry` module to
  load a Broombridge schema file into Python, encode it and simulate
  its evolution using Trotterization in Q#.
  Detailed information of what you can do using the chemistry module
  can be found inside [chemistry_sample.py](./chemistry_sample.py).
- One that demonstrates the use of Python to call into Q# by using the 
  [QInfer](http://qinfer.org/) and [QuTiP](http://qutip.org/) Python 
  libraries to study the behavior of a Q# operation.

## Pre-reqs.

This module depends on having Python, the `qsharp` module, and the IQ# kernel installed
on your machine. For detailed installation instructions, please visit
https://docs.microsoft.com/en-us/quantum/install-guide/python

## Running the chemistry demo.

To run the chemistry sample, from a command line, run:
```
python chemistry_sample.py
```

The first time you run the sample you might see errors like this when the script starts:
```
fail: Microsoft.Quantum.IQSharp.Workspace[0]
      QS5022: No identifier with that name exists.
```
these are known and are safe to ignore.

If the script runs successfully, you should see this message in the output.
```
Trotter simulation complete. (phase, energy): (-0.4150803744654529, -1.1365353821636321)
```

## Running the tomography demo.

This sample uses a couple extra Python packages to help out, so you'll need to have those ready as well.
If you are using the [**Anaconda distribution**](https://www.anaconda.com/) of Python, this can be done automatically by using the `environment.yml` file provided with this sample:

```
conda env create -f environment.yml
```


Once everything is installed, run `jupyter notebook` to start the Jupyter Notebook interface in your web browser:

```
PS> jupyter notebook
```

In the browser, select the `tomography-sample.ipynb` notebook in your browser to view the sample.

