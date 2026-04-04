class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-04T18-34-17Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T18-34-17Z/sigil-2026-04-04T18-34-17Z-darwin-arm64.tar.gz"
      sha256 "9467ea667cb3a5e98af44a65d1dbb5b57fd01c88e9c15ac32596deba1c2642c0"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T18-34-17Z/sigil-2026-04-04T18-34-17Z-darwin-x64.tar.gz"
      sha256 "91f6030f785a5a3b6c56ef5b1eca41a21906a52771466e40f0d9c7facbec9cdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T18-34-17Z/sigil-2026-04-04T18-34-17Z-linux-arm64.tar.gz"
      sha256 "fd872fdf76f2715ecfb1b1d7e82709897fe9daf1b33dbb3331e95898c7b9e5cf"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T18-34-17Z/sigil-2026-04-04T18-34-17Z-linux-x64.tar.gz"
      sha256 "3ddf5c743989fdec83feea01d659e473092d96fc3e0f3047873554a64a656312"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-04T18-34-17Z", shell_output("#{bin}/sigil --version")
  end
end
