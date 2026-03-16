class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-16T02-56-13Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-16T02-56-13Z/sigil-2026-03-16T02-56-13Z-darwin-arm64.tar.gz"
      sha256 "e6f400d64d6897873adde5aa3b3b78d90016aa18f86f679f3a93755c24d3617f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-16T02-56-13Z/sigil-2026-03-16T02-56-13Z-darwin-x64.tar.gz"
      sha256 "2df22669f0cc116f78cd28a380e3f03c5a858635d6b57de34f8f5337ff75a9d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-16T02-56-13Z/sigil-2026-03-16T02-56-13Z-linux-arm64.tar.gz"
      sha256 "cefb15975330247a80ed524885b8127d3a38ed9e0b1974b29d7eb862e322da55"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-16T02-56-13Z/sigil-2026-03-16T02-56-13Z-linux-x64.tar.gz"
      sha256 "f13cc78e9164a884bea64f7fc25f8655a2679deca64c4f5c78910daf22a78873"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-16T02-56-13Z", shell_output("#{bin}/sigil --version")
  end
end
