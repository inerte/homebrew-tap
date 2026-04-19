class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-19T14-29-43Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T14-29-43Z/sigil-2026-04-19T14-29-43Z-darwin-arm64.tar.gz"
      sha256 "a3e405e3c2d9927b2ecbe96ffb5b43bdc308833df4cac0ef88fa788e8494544f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T14-29-43Z/sigil-2026-04-19T14-29-43Z-darwin-x64.tar.gz"
      sha256 "26485456243e8204c86b687055008dd047272c4f4185344a0f7a79da9695eeb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T14-29-43Z/sigil-2026-04-19T14-29-43Z-linux-arm64.tar.gz"
      sha256 "30dd4dde362d19cd86f32542258a9a7210c91d2521cd1e2fafb8ad70b293ce2c"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T14-29-43Z/sigil-2026-04-19T14-29-43Z-linux-x64.tar.gz"
      sha256 "6eb281bbb67bdc0ae79104945881cafbcc793d94843c73b684af70135ae2948e"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-19T14-29-43Z", shell_output("#{bin}/sigil --version")
  end
end
