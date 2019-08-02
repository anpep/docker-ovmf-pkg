FROM edk2
COPY Conf/ /usr/local/src/edk2/Conf/
CMD OvmfPkg/build.sh -a X64 -b DEBUG
