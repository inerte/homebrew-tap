class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-18T01-38-38Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T01-38-38Z/sigil-2026-04-18T01-38-38Z-darwin-arm64.tar.gz"
      sha256 "41fab4ddcefffb32b8024556f3a14a5325479eddeccbdf315131e6806ac5867a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T01-38-38Z/sigil-2026-04-18T01-38-38Z-darwin-x64.tar.gz"
      sha256 "18d7eae925fdb66552a1de2e7dd4e624259d9cb29fcd16a90e29cb82e2a252ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T01-38-38Z/sigil-2026-04-18T01-38-38Z-linux-arm64.tar.gz"
      sha256 "298e787879f8be54adcd87f5f394ebb9a55a9c0aceb75af434b528cad915a45b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T01-38-38Z/sigil-2026-04-18T01-38-38Z-linux-x64.tar.gz"
      sha256 "9cd90bb791531fe8ff8ffdca1dc60fba3c3c6fd5676dd02fe018c0607f03abaa"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-18T01-38-38Z", shell_output("#{bin}/sigil --version")
  end
end
