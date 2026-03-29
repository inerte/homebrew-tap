class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-28T22-58-44Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T22-58-44Z/sigil-2026-03-28T22-58-44Z-darwin-arm64.tar.gz"
      sha256 "b0f2177305c943e769f9c094d351c048f0be28ef4a4ce12f10207616f969934d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T22-58-44Z/sigil-2026-03-28T22-58-44Z-darwin-x64.tar.gz"
      sha256 "ec3548b3ad1829d9ddef01899a00e671984bbd7a4d771ad7a60aaccbcdf07423"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T22-58-44Z/sigil-2026-03-28T22-58-44Z-linux-arm64.tar.gz"
      sha256 "c6808832dac0130aba95002aeea5dbeeca93e0f32848190ef2ca0d92034315b7"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-28T22-58-44Z/sigil-2026-03-28T22-58-44Z-linux-x64.tar.gz"
      sha256 "1c1ff3542efde87262cfe3a26089c4a9455a33447e29ce39d80f83452ce11706"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-28T22-58-44Z", shell_output("#{bin}/sigil --version")
  end
end
