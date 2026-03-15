class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-15T20-24-07Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T20-24-07Z/sigil-2026-03-15T20-24-07Z-darwin-arm64.tar.gz"
      sha256 "fd82187ee84d9b6601880725d7f75bdcf8c17f9860bb65a9ffeefb7b8930ffb2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T20-24-07Z/sigil-2026-03-15T20-24-07Z-darwin-x64.tar.gz"
      sha256 "0ab7bcf504e73bfafdcf61b6b843b6ca6fdfc0d9e93ba6264945d6a59e6396bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T20-24-07Z/sigil-2026-03-15T20-24-07Z-linux-arm64.tar.gz"
      sha256 "9dd7278c1b8cc18aefe425faa7ecba7d29b7de849121f84b6bffb70f5064bf41"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T20-24-07Z/sigil-2026-03-15T20-24-07Z-linux-x64.tar.gz"
      sha256 "757ca46e89002913df09667e5cca27709b9776db494fcfc7d4d5da3f90efef11"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-15T20-24-07Z", shell_output("#{bin}/sigil --version")
  end
end
