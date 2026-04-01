class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-01T16-31-33Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-01T16-31-33Z/sigil-2026-04-01T16-31-33Z-darwin-arm64.tar.gz"
      sha256 "b1598cc4bf065d3fc016e35400e9481b5465d91d2b4ce0fe9469037ed7956135"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-01T16-31-33Z/sigil-2026-04-01T16-31-33Z-darwin-x64.tar.gz"
      sha256 "a8e722a06533c739c34e7bb8aeb5e2157027362df6564f2fe91b75c0fbf0d7de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-01T16-31-33Z/sigil-2026-04-01T16-31-33Z-linux-arm64.tar.gz"
      sha256 "168b05998eafafa35f854cb2c79376805d6efc6c9ae3f9777395a35164b53e9f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-01T16-31-33Z/sigil-2026-04-01T16-31-33Z-linux-x64.tar.gz"
      sha256 "816cc2f64382fe8147bfeacd4be289a7645aa5783e49ddf898e41432f49de752"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-01T16-31-33Z", shell_output("#{bin}/sigil --version")
  end
end
