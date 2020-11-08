.PHONY: check-sha256
check-sha256:
	wget https://github.com/shuuuuun/${REPO}/archive/${VERSION}.tar.gz
	openssl dgst -sha256 ${VERSION}.tar.gz
