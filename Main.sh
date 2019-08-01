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
ShEnvInstallerBootstrap "${HOME}/Tools/ShEnvInstaller/Raw" 'https://raw.githubusercontent.com/victor-yarema/ShEnvInstaller/master/Main.sh?md5=827d97fc75d93e2e5c779efe29859f7e'
