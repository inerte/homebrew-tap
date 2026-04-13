class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-13T00-36-47Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-13T00-36-47Z/sigil-2026-04-13T00-36-47Z-darwin-arm64.tar.gz"
      sha256 "8f88228ca22abd12d47b0d72a54031df2b400459b581c47185165a084739f585"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-13T00-36-47Z/sigil-2026-04-13T00-36-47Z-darwin-x64.tar.gz"
      sha256 "947d9fd3ea5f4f6f54a34bfeb7541360a39b5e97b5b4687c1083d7d8e3463f7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-13T00-36-47Z/sigil-2026-04-13T00-36-47Z-linux-arm64.tar.gz"
      sha256 "0ef002e40fad12ede8d4a8f1d5bb050c991d12d7e90e271614326cbaf4fdc9c9"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-13T00-36-47Z/sigil-2026-04-13T00-36-47Z-linux-x64.tar.gz"
      sha256 "b01b28fb3a1049ce3cce9e27776893e9018d5a675939a1066835a703de73799f"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-13T00-36-47Z", shell_output("#{bin}/sigil --version")
  end
end
