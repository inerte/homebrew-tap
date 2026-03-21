class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-21T01-10-42Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-21T01-10-42Z/sigil-2026-03-21T01-10-42Z-darwin-arm64.tar.gz"
      sha256 "b92efa67f40527275369a75eca3baaf0ed70cd42e580ba4117341d585e2b88e5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-21T01-10-42Z/sigil-2026-03-21T01-10-42Z-darwin-x64.tar.gz"
      sha256 "7f32ef6332d22206f2909659e6aa5019b6de19ef7ef8a6371dab968bfc1cfa20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-21T01-10-42Z/sigil-2026-03-21T01-10-42Z-linux-arm64.tar.gz"
      sha256 "ea859035a5f5b1f8b9493cb4811ebdcf93851179407a668574273616daefe316"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-21T01-10-42Z/sigil-2026-03-21T01-10-42Z-linux-x64.tar.gz"
      sha256 "1bbc9d6f4a67b51ca0165e381590f63a93f0ae35a2dec1e6b12983ff31502d5c"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-21T01-10-42Z", shell_output("#{bin}/sigil --version")
  end
end
