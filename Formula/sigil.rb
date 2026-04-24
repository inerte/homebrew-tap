class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-24T21-28-26Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-28-26Z/sigil-2026-04-24T21-28-26Z-darwin-arm64.tar.gz"
      sha256 "ca5dd0586ee96dcbf6ec521c1d8d2de8302fc296d1f49ae36c89a44fd9b9b6e7"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-28-26Z/sigil-2026-04-24T21-28-26Z-darwin-x64.tar.gz"
      sha256 "82fbcfdc670c1f5f0ce7c64082055f410e6cf5f0291ce8ea9e85d82265b874d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-28-26Z/sigil-2026-04-24T21-28-26Z-linux-arm64.tar.gz"
      sha256 "d085a42f22149153be5a19746433f96aa46bb1a0e26055ccd06e0e80fd299581"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-28-26Z/sigil-2026-04-24T21-28-26Z-linux-x64.tar.gz"
      sha256 "86f417fe1e299a43e1ff5ebeea6e982570c969ee6c02916370dbe2fc4832dfba"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-24T21-28-26Z", shell_output("#{bin}/sigil --version")
  end
end
