class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-10T00-51-17Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-10T00-51-17Z/sigil-2026-04-10T00-51-17Z-darwin-arm64.tar.gz"
      sha256 "baf92d1128bf8a4e93e1795efca9a64aa31f6f3f71a00ff6d0f1aa4b80d1727e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-10T00-51-17Z/sigil-2026-04-10T00-51-17Z-darwin-x64.tar.gz"
      sha256 "e2a287e6139b8f452ae403475a638fc0499a1ac02c9cef5d7889965f315e929c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-10T00-51-17Z/sigil-2026-04-10T00-51-17Z-linux-arm64.tar.gz"
      sha256 "37bed9e37640c38bdbf8d436bad8f2f7e9d81101c4a8b1825b3fa5b5fecab632"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-10T00-51-17Z/sigil-2026-04-10T00-51-17Z-linux-x64.tar.gz"
      sha256 "ea1800a5de181626dc96fd31b760cc7fa44a41ba8d9dbdc47ab9c078f2211d83"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-10T00-51-17Z", shell_output("#{bin}/sigil --version")
  end
end
