setup() {
  set -eu -o pipefail
  export DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )/.."
  export TESTDIR=~/tmp/test-ddev-wkhtmltox
  mkdir -p $TESTDIR
  export PROJNAME=test-ddev-wkhtmltox
  export DDEV_NON_INTERACTIVE=true
  ddev delete -Oy ${PROJNAME} >/dev/null 2>&1 || true
  cd "${TESTDIR}"
  ddev config --project-name=${PROJNAME}
  ddev start -y >/dev/null
}

teardown() {
  set -eu -o pipefail
  cd ${TESTDIR} || ( printf "unable to cd to ${TESTDIR}\n" && exit 1 )
  ddev delete -Oy ${PROJNAME} >/dev/null 2>&1
  [ "${TESTDIR}" != "" ] && rm -rf ${TESTDIR}
}

@test "install from directory" {
  set -eu -o pipefail
  cd ${TESTDIR}
  echo "# ddev get ${DIR} with project ${PROJNAME} in ${TESTDIR} ($(pwd))" >&3
  ddev get ${DIR}
  ddev restart

  ddev exec "wkhtmltopdf --version" | grep "wkhtmltopdf 0.12.6.1 (with patched qt)"
}

@test "install from release" {
  set -eu -o pipefail
  cd ${TESTDIR} || ( printf "unable to cd to ${TESTDIR}\n" && exit 1 )
  echo "# ddev get skeemer/ddev-wkhtmltox with project ${PROJNAME} in ${TESTDIR} ($(pwd))" >&3
  ddev get skeemer/ddev-wkhtmltox
  ddev restart >/dev/null

  ddev exec "wkhtmltopdf --version" | grep "wkhtmltopdf 0.12.6.1 (with patched qt)"
}
