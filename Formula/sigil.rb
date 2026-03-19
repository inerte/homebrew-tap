class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-19T02-26-22Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-19T02-26-22Z/sigil-2026-03-19T02-26-22Z-darwin-arm64.tar.gz"
      sha256 "a6f3e83dc25ecb94a5b15a308df65e7432e815b90a77d5457e44554799bec4f2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-19T02-26-22Z/sigil-2026-03-19T02-26-22Z-darwin-x64.tar.gz"
      sha256 "73f25554e8a9b22ef1e304160ce4610b626c7fb3609ef231ebc639446dceb9ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-19T02-26-22Z/sigil-2026-03-19T02-26-22Z-linux-arm64.tar.gz"
      sha256 "569e95b51c915867018ad45e3397319f4c46d405b8d3f55d3f19fa4e764f28ad"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-19T02-26-22Z/sigil-2026-03-19T02-26-22Z-linux-x64.tar.gz"
      sha256 "daa6872b02b05dfd79b4ff8ecc2d9628af1319886c2ae0ff719f89ff1ecbbe0b"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-19T02-26-22Z", shell_output("#{bin}/sigil --version")
  end
end
