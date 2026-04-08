class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-08T15-02-09Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-02-09Z/sigil-2026-04-08T15-02-09Z-darwin-arm64.tar.gz"
      sha256 "5218c06dda4d3aa2ccdfd2cba9493d45fbd525e9f80ae77cc83ad9a2497a0860"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-02-09Z/sigil-2026-04-08T15-02-09Z-darwin-x64.tar.gz"
      sha256 "60f1738f936daa721b9ab77c64c501961352be047987efd397af9152f3963a81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-02-09Z/sigil-2026-04-08T15-02-09Z-linux-arm64.tar.gz"
      sha256 "dc589c3687e2e841e73264b279f5f59398b45a003c34660a0ed97d01486e8d79"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T15-02-09Z/sigil-2026-04-08T15-02-09Z-linux-x64.tar.gz"
      sha256 "e5883d18b555d3976c6974b163c69769752596607af631780d4194085e23c0fd"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-08T15-02-09Z", shell_output("#{bin}/sigil --version")
  end
end
