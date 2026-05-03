class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-03T16-42-32Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T16-42-32Z/sigil-2026-05-03T16-42-32Z-darwin-arm64.tar.gz"
      sha256 "52763b150029c0d4e56a9a6f20690cdbe78b59c15ebe8fe5c49062f8862d48cf"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T16-42-32Z/sigil-2026-05-03T16-42-32Z-darwin-x64.tar.gz"
      sha256 "40bb2dcb434398dbf030a98b3b13020e68e90bedf5fdf67afbb43e4b9017798c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T16-42-32Z/sigil-2026-05-03T16-42-32Z-linux-arm64.tar.gz"
      sha256 "03cec246636ccd2df24121f23e6522350d92aef7b2cf9fb80d7ac8c4f565a1f8"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T16-42-32Z/sigil-2026-05-03T16-42-32Z-linux-x64.tar.gz"
      sha256 "e2d872d776409f6c039f5eb222ce39e79f2f319dbdf49fbea1bba0754e9e6f68"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-03T16-42-32Z", shell_output("#{bin}/sigil --version")
  end
end
