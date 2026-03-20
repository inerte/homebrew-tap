class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-20T17-13-45Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T17-13-45Z/sigil-2026-03-20T17-13-45Z-darwin-arm64.tar.gz"
      sha256 "6c6b13a41cac583db70b3472c5c7b02c586f08e8280cc2954b04016fc4d3494f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T17-13-45Z/sigil-2026-03-20T17-13-45Z-darwin-x64.tar.gz"
      sha256 "9b23779639ccc2ab2ed0619dd45dcd4e9399456d360c06c4e3c630cb23258c37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T17-13-45Z/sigil-2026-03-20T17-13-45Z-linux-arm64.tar.gz"
      sha256 "bebb02fa8457f204e73c65b370b40e456ceecb74f27ed8f2f80939c22d092e50"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T17-13-45Z/sigil-2026-03-20T17-13-45Z-linux-x64.tar.gz"
      sha256 "b2b719017dd6cb7010a5df2cb80803893b103f65efaf748df84a5429ee0fe5ec"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-20T17-13-45Z", shell_output("#{bin}/sigil --version")
  end
end
