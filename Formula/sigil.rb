class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-20T19-58-50Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T19-58-50Z/sigil-2026-03-20T19-58-50Z-darwin-arm64.tar.gz"
      sha256 "6919b8c7106bbb616b332b26b28ec27094c304c2136ec323634411c135c7decc"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T19-58-50Z/sigil-2026-03-20T19-58-50Z-darwin-x64.tar.gz"
      sha256 "0a6830c846ffdc7d1c298e80ee669552d76af378267aec35d69ab454efa9ab92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T19-58-50Z/sigil-2026-03-20T19-58-50Z-linux-arm64.tar.gz"
      sha256 "cffebf096e463390e1d06287d6f39ca475ba552a53ac249016fbc7dd372fb7c1"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T19-58-50Z/sigil-2026-03-20T19-58-50Z-linux-x64.tar.gz"
      sha256 "211ec7bbb23fd85cdbbe19c77ae8519ebda34abd282728bf94f0480e09c35634"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-20T19-58-50Z", shell_output("#{bin}/sigil --version")
  end
end
