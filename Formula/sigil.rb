class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T02-22-04Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T02-22-04Z/sigil-2026-04-16T02-22-04Z-darwin-arm64.tar.gz"
      sha256 "ae334c52a40fa8c1fc11a86d2d94bf36f7afcef411f3ae1920da65f63d9e7dd0"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T02-22-04Z/sigil-2026-04-16T02-22-04Z-darwin-x64.tar.gz"
      sha256 "3d94dba517c7c9a7010cec5b487437f5789255563169ec248142d22065822cf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T02-22-04Z/sigil-2026-04-16T02-22-04Z-linux-arm64.tar.gz"
      sha256 "8290039c48c2244bb74ba9d49d9b9e6fc31fa74e59b0c15eea1e7daf2e458d5c"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T02-22-04Z/sigil-2026-04-16T02-22-04Z-linux-x64.tar.gz"
      sha256 "a38e5c302055bfd20610f2a5a3544cdd094cef5d84f833679d858048c4c7d6ef"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
  end

  test do
    assert_match "sigil 2026-04-16T02-22-04Z", shell_output("#{bin}/sigil --version")
  end
end
