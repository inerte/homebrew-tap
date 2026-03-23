class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-23T01-58-44Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T01-58-44Z/sigil-2026-03-23T01-58-44Z-darwin-arm64.tar.gz"
      sha256 "feeee38e1acd5cdd0a2bb44b39b5d2eeea16a29c49715c906ee9f5f61821b836"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T01-58-44Z/sigil-2026-03-23T01-58-44Z-darwin-x64.tar.gz"
      sha256 "f1224cabdf0866169c65d86e22c8392b74ba4efb935da8e36dac0816aeb5906e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T01-58-44Z/sigil-2026-03-23T01-58-44Z-linux-arm64.tar.gz"
      sha256 "aef08ce2355bd630d3b625424c1af189d5868587dbbe33cdb8dc2b82dd166f77"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T01-58-44Z/sigil-2026-03-23T01-58-44Z-linux-x64.tar.gz"
      sha256 "c19623ba9886c1c003286033aadd79b1862fa0387792d950981c917053d882cc"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-23T01-58-44Z", shell_output("#{bin}/sigil --version")
  end
end
