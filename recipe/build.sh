#!/bin/bash

if [[ ${HOST} =~ .*darwin.* ]]; then
  export LDFLAGS="${LDFLAGS_CC} -Wl,-rpath,${PREFIX}/lib"
fi

mv DESCRIPTION DESCRIPTION.old
grep -v '^Priority: ' DESCRIPTION.old > DESCRIPTION

$R CMD INSTALL --build .
