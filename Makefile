apktool_version := 2.12.0
jadx_version := 1.5.3

dependencies: deps/apktool.jar deps/jadx.jar
	@echo "All dependencies are present."

.INTERMEDIATE: deps/jadx.zip

deps:
	mkdir -p deps

deps/apktool.jar: | deps
	@echo "Downloading apktool..."
	curl -Lo $@ https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_${apktool_version}.jar

deps/jadx.zip: | deps
	curl -Lo $@ https://github.com/skylot/jadx/releases/download/v${jadx_version}/jadx-${jadx_version}.zip

deps/jadx.jar: deps/jadx.zip
	@echo "Downloading jadx..."
	unzip -p $^ lib/jadx-${jadx_version}-all.jar > $@
