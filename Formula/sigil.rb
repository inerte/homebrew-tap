class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-20T04-08-32Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T04-08-32Z/sigil-2026-03-20T04-08-32Z-darwin-arm64.tar.gz"
      sha256 "47605768f1bbc08d6023b4eed6536ed4796c84d6c825c9db5e6c6f0be1a674ec"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T04-08-32Z/sigil-2026-03-20T04-08-32Z-darwin-x64.tar.gz"
      sha256 "d12ce8e64082f1bbc1b9c99c01770f2c77b780abfb3dcc70b16701878de162d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T04-08-32Z/sigil-2026-03-20T04-08-32Z-linux-arm64.tar.gz"
      sha256 "3e1e15d2311e9e280eb0f958380893099cbe4299a5f05c2d3ba02a7d8b42fa83"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T04-08-32Z/sigil-2026-03-20T04-08-32Z-linux-x64.tar.gz"
      sha256 "963665e4a41c8d61e5ed78150a19575b3e2a56f2ba1bdfbc486a509bda9afdc7"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-20T04-08-32Z", shell_output("#{bin}/sigil --version")
  end
end
