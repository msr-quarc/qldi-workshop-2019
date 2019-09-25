# We use the iqsharp-base image, as that includes
# the .NET Core SDK, IQ#, and Jupyter Notebook already
# installed for us.
FROM mcr.microsoft.com/quantum/iqsharp-base:0.9.1908.2906

# Add metadata indicating that this image is used for the katas.
ENV IQSHARP_HOSTING_ENV=QLDI_2019_DOCKERFILE

# Make sure the contents of our repo are in ${HOME}
# Required for mybinder.org
COPY . ${HOME}
USER root
RUN chown -R ${USER} ${HOME} && \
    chmod +x ${HOME}/scripts/*.sh
USER ${USER}

RUN pip install qinfer duecredit mpltools matplotlib

# Pre-exec notebooks to improve first-use start time
RUN ${HOME}/scripts/prebuild-kata.sh 0.Intro Intro.ipynb
RUN ${HOME}/scripts/prebuild-kata.sh 1.BasicGates BasicGates.ipynb
RUN ${HOME}/scripts/prebuild-kata.sh 2.DeutschJozsaAlgorithm DeutschJozsaAlgorithmTutorial.ipynb
RUN ${HOME}/scripts/prebuild-kata.sh 3.Teleport Teleportation.ipynb
RUN ${HOME}/scripts/prebuild-kata.sh 4.GroverSearch GroversAlgorithm.ipynb
RUN ${HOME}/scripts/prebuild-kata.sh 5.SATSolver SolveSATWithGrover.ipynb
RUN ${HOME}/scripts/prebuild-kata.sh 6.PhaseEstimation PhaseEstimation.ipynb

# Pre-build samples
dotnet build ${HOME}/7.Chemistry
dotnet build ${HOME}/8.Numerics

# Pre-build chemistry simulation:
WORKDIR ${HOME}/9.Python
RUN python chemistry_sample.py

