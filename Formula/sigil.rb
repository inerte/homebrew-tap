class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-02T15-50-23Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T15-50-23Z/sigil-2026-05-02T15-50-23Z-darwin-arm64.tar.gz"
      sha256 "949822318060804251c88e40e74d2d055e01fbc44a276e982cda5d141f486e81"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T15-50-23Z/sigil-2026-05-02T15-50-23Z-darwin-x64.tar.gz"
      sha256 "fe5129f36042088d038371ce21496b547bf6305b0564cc860b605ac596ed8b08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T15-50-23Z/sigil-2026-05-02T15-50-23Z-linux-arm64.tar.gz"
      sha256 "86b4811ecbd2cedb0a20d2cfd72698089e1b0d164155e5eecd51ee61f1a0d36f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-02T15-50-23Z/sigil-2026-05-02T15-50-23Z-linux-x64.tar.gz"
      sha256 "084328c2fd8789b6e7524d0d97aab65fb5f06f6f746a67c444a701008f0201f5"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-02T15-50-23Z", shell_output("#{bin}/sigil --version")
  end
end
