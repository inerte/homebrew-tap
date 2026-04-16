class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T14-06-17Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-06-17Z/sigil-2026-04-16T14-06-17Z-darwin-arm64.tar.gz"
      sha256 "c758ba5ddaecbe2c6b59a5a0eb7b58f2101cfd9730cddcec276e5ffaf9d5a852"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-06-17Z/sigil-2026-04-16T14-06-17Z-darwin-x64.tar.gz"
      sha256 "55fcd72d78f47a3e45cf1261f6eacb95237b8445d14fba0a9070948fb7d61e17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-06-17Z/sigil-2026-04-16T14-06-17Z-linux-arm64.tar.gz"
      sha256 "3549111cf5a175dc64fb9fe6c8dab19f65e94ce4cb2f3d8541c8c4b21b75b2b0"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-06-17Z/sigil-2026-04-16T14-06-17Z-linux-x64.tar.gz"
      sha256 "03cd31033c8cc0b0e8820dd46218e10eb3db08ecdd55d91daff629684dfd7bb7"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
  end

  test do
    assert_match "sigil 2026-04-16T14-06-17Z", shell_output("#{bin}/sigil --version")
  end
end
