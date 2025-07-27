#!/bin/bash

pthtop="$(cd "$(dirname "${0}")/../../../.." && pwd)"
source "${pthtop}"/manage/lib/params.sh
source "${pthtop}"/manage/lib/shared.sh
source "${pthcrr}"/params.sh

pthapp="${pthsrc}"/envhgf
test -d "${pthapp}" || mkdir "${pthapp}"
cd "${pthapp}" &&test -d hgf || mkdir hgf
addimg ${imgtgt} "${cnfimg}" "${pthdoc}"

pthkey="${pthapp}"/hgf/token
if test ! -e "${pthkey}"
then
  cnfrtn "manual: ${pthkey}: hf_XXX"
fi
