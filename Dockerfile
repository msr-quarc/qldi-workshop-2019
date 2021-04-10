# We use the iqsharp-base image, as that includes
# the .NET Core SDK, IQ#, and Jupyter Notebook already
# installed for us.
FROM mcr.microsoft.com/quantum/iqsharp-base:latest

# Add metadata indicating that this image is used for the katas.
ENV IQSHARP_HOSTING_ENV=QLDI_2019_DOCKERFILE

# Make sure the contents of our repo are in ${HOME}
# Required for mybinder.org
COPY . ${HOME}
USER root
RUN chown -R ${USER} ${HOME} && \
    chmod +x ${HOME}/scripts/*.sh
USER ${USER}

# Pre-exec notebooks to improve first-use start time
RUN ${HOME}/scripts/prebuild-kata.sh 0.Intro Intro.ipynb

# RUN ${HOME}/scripts/prebuild-kata.sh 1.BasicGates BasicGates.ipynb
# RUN ${HOME}/scripts/prebuild-kata.sh 2.DeutschJozsaAlgorithm DeutschJozsaAlgorithmTutorial.ipynb
# RUN ${HOME}/scripts/prebuild-kata.sh 3.Teleport Teleportation.ipynb
# RUN ${HOME}/scripts/prebuild-kata.sh 4.GroverSearch GroversAlgorithm.ipynb
# RUN ${HOME}/scripts/prebuild-kata.sh 5.SATSolver SolveSATWithGrover.ipynb
# RUN ${HOME}/scripts/prebuild-kata.sh 6.PhaseEstimation PhaseEstimation.ipynb
