# We use the iqsharp-base image, as that includes
# the .NET Core SDK, IQ#, and Jupyter Notebook already
# installed for us.
FROM mcr.microsoft.com/quantum/iqsharp-base:0.8.1907.1701

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
## TODO RUN ${HOME}/scripts/prebuild-kata.sh 0.Intro
RUN ${HOME}/scripts/prebuild-kata.sh 1.Teleport Teleportation.ipynb
RUN ${HOME}/scripts/prebuild-kata.sh DeutschJozsaAlgorithm DeutschJozsaAlgorithmTutorial.ipynb
RUN ${HOME}/scripts/prebuild-kata.sh GroversAlgorithm
RUN ${HOME}/scripts/prebuild-kata.sh SolveSATWithGrover
