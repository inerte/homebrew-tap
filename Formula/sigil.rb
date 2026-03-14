class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-14T16-48-53Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-14T16-48-53Z/sigil-2026-03-14T16-48-53Z-darwin-arm64.tar.gz"
      sha256 "9d87587806df0bb96b176e9681beefef612fb07854c3d58853870decd4d159a5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-14T16-48-53Z/sigil-2026-03-14T16-48-53Z-darwin-x64.tar.gz"
      sha256 "414346365e25670129c76055fd29cde62f1cca95a855530d4bc78950c0786534"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-14T16-48-53Z/sigil-2026-03-14T16-48-53Z-linux-arm64.tar.gz"
      sha256 "86c3367c91796f3064713b6b8c84cdee939d36f32c3b576277843c4d4374980f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-14T16-48-53Z/sigil-2026-03-14T16-48-53Z-linux-x64.tar.gz"
      sha256 "fe4f00435615b6bb947f5599fd944d0fb3655aae134241f716604192fc973274"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-14T16-48-53Z", shell_output("#{bin}/sigil --version")
  end
end
