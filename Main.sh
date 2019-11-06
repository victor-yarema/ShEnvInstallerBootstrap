ShEnvInstallerBootstrap()
(
  set -xuC &&
  set -o pipefail &&
  D="$1" &&
  U="$2" &&
  F='Main.sh' &&
  mkdir -p "${D}" &&
  cd "${D}" &&
  {
    [ -e "${F}" ] ||
    wget -O "${F}" "${U}"
  } &&
  . ./"${F}"
) &&
ShEnvInstallerBootstrap "${HOME}/Tools/ShEnvInstaller/Raw" 'https://raw.githubusercontent.com/victor-yarema/ShEnvInstaller/master/Main.sh?md5=b4ad5d2c60b382f9baa234a020ae6329'
