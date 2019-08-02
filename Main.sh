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
ShEnvInstallerBootstrap "${HOME}/Tools/ShEnvInstaller/Raw" 'https://raw.githubusercontent.com/victor-yarema/ShEnvInstaller/master/Main.sh?md5=3c1cff3e076c9000d576006a4698eaf2'
