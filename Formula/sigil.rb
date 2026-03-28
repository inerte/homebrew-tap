class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-28T01-01-51Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T01-01-51Z/sigil-2026-03-28T01-01-51Z-darwin-arm64.tar.gz"
      sha256 "f625049680922ab3a94224f47b6fac849c44c820543652020138fa85e8e994a1"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T01-01-51Z/sigil-2026-03-28T01-01-51Z-darwin-x64.tar.gz"
      sha256 "69e6e3acd09a0a1e676584359d16401b949cdd5302d95d1857e80392fdd51c1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T01-01-51Z/sigil-2026-03-28T01-01-51Z-linux-arm64.tar.gz"
      sha256 "5c4150b9e04cc8e981d417fa19c669c348828558664ba6393d335166ca824a45"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T01-01-51Z/sigil-2026-03-28T01-01-51Z-linux-x64.tar.gz"
      sha256 "ed5fda891392ca13ad8d259aaefd2fb644fd01b860acf67f306a9458e82c52bf"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-28T01-01-51Z", shell_output("#{bin}/sigil --version")
  end
end
