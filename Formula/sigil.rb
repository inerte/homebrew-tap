class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-15T00-24-41Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-24-41Z/sigil-2026-03-15T00-24-41Z-darwin-arm64.tar.gz"
      sha256 "ddba2182952e213041db183a0b39df1c84b4af3bf15eb1bebbc9aa486b91833b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-24-41Z/sigil-2026-03-15T00-24-41Z-darwin-x64.tar.gz"
      sha256 "949c283c02502e7ced9c00d254e8b35b161db6d27085150fcc90a1024bf9df86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-24-41Z/sigil-2026-03-15T00-24-41Z-linux-arm64.tar.gz"
      sha256 "bc9493909624fd8d437addfe4d55aacf2409bb44a9bfe6e6a888640fb573b9f9"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T00-24-41Z/sigil-2026-03-15T00-24-41Z-linux-x64.tar.gz"
      sha256 "37b08627209edccaeb1c506771819116ca185de209aa5caf46be1e4703e03b34"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-15T00-24-41Z", shell_output("#{bin}/sigil --version")
  end
end
