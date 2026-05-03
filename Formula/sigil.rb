class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-03T14-23-47Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-23-47Z/sigil-2026-05-03T14-23-47Z-darwin-arm64.tar.gz"
      sha256 "2616a81cc3ff371d1a4a5f77ca8bd179921935bcb181aa3b9f5774dfebc24350"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-23-47Z/sigil-2026-05-03T14-23-47Z-darwin-x64.tar.gz"
      sha256 "eb2795f55f7590a747795458f2a954990329365bca0b6305b42835998731f972"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-23-47Z/sigil-2026-05-03T14-23-47Z-linux-arm64.tar.gz"
      sha256 "73c439aacefe87e4c95c915e387fba93780ca27087bc5e6b8d71ecb373ee0662"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-23-47Z/sigil-2026-05-03T14-23-47Z-linux-x64.tar.gz"
      sha256 "a87647c77d0dccd6d32b6ec3760afd4915938e6e67d9e8aea604ce583cebf003"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-03T14-23-47Z", shell_output("#{bin}/sigil --version")
  end
end
