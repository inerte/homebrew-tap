class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T03-15-41Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-15-41Z/sigil-2026-04-05T03-15-41Z-darwin-arm64.tar.gz"
      sha256 "c17e9b6b8fd1c86b0243762e70b2e490e8f0a355a04c2041f5cf1bd6677d8105"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-15-41Z/sigil-2026-04-05T03-15-41Z-darwin-x64.tar.gz"
      sha256 "781fe61fb70127fdf958ee847517505309968ed4d2ba420ef34ae53e1aa64c00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-15-41Z/sigil-2026-04-05T03-15-41Z-linux-arm64.tar.gz"
      sha256 "26532c427f7bab055becb51684253191542bfb2c1683fff7f35977bdb11dafe0"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-15-41Z/sigil-2026-04-05T03-15-41Z-linux-x64.tar.gz"
      sha256 "71f8e3690e6d7d5fee585a21567b2d725f28287a486a5ec288d7475250844d2d"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T03-15-41Z", shell_output("#{bin}/sigil --version")
  end
end
