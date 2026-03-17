class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-17T15-33-13Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T15-33-13Z/sigil-2026-03-17T15-33-13Z-darwin-arm64.tar.gz"
      sha256 "2cf7999b259b8d4ce3a38736d75d2bd17a9c75a052e8a9564bbda6a5468e9ecf"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T15-33-13Z/sigil-2026-03-17T15-33-13Z-darwin-x64.tar.gz"
      sha256 "cf5ac795c6895af15841cb24787bc2208efc9ea7ee440da3df1b0e3d443dbfe3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T15-33-13Z/sigil-2026-03-17T15-33-13Z-linux-arm64.tar.gz"
      sha256 "2d89215c8f926bebcc067f68aaa039b0cf192941a447eb93240c6bc5ecdaf9df"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T15-33-13Z/sigil-2026-03-17T15-33-13Z-linux-x64.tar.gz"
      sha256 "8164b2a479847fe6da66e3a82c2c75409b272fc35e951f2209fae65b69855689"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-17T15-33-13Z", shell_output("#{bin}/sigil --version")
  end
end
