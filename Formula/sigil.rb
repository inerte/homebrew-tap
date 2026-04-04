class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-04T21-29-12Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-29-12Z/sigil-2026-04-04T21-29-12Z-darwin-arm64.tar.gz"
      sha256 "de46b3ea23ebc0c4f8ebb3ef0b2e044f506a4a52c0f42734423674c10e1efb65"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-29-12Z/sigil-2026-04-04T21-29-12Z-darwin-x64.tar.gz"
      sha256 "140703b1ff3897495ae0b4b736fa54ba83c62e83ace8da94d386a13fb5422adc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-29-12Z/sigil-2026-04-04T21-29-12Z-linux-arm64.tar.gz"
      sha256 "906184fe6c956845723bcd39c8fc882280ab4a031e9d24cc00bfdc425bf5383e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-29-12Z/sigil-2026-04-04T21-29-12Z-linux-x64.tar.gz"
      sha256 "15aa4036d0cdcc62fe8eac06a677746310816efef84a5e6fe6f770b9333251c4"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-04T21-29-12Z", shell_output("#{bin}/sigil --version")
  end
end
