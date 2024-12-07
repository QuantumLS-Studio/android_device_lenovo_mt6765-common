if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
	return
fi

set -e -u -o pipefail

# Required!
export DEVICE=X306FC
export DEVICE_COMMON=X306FC-common
export VENDOR=lenovo

MY_DIR=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

${MY_DIR}/../extract-files.sh "$@"