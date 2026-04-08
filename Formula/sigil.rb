class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-08T14-05-58Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T14-05-58Z/sigil-2026-04-08T14-05-58Z-darwin-arm64.tar.gz"
      sha256 "1b9f02dbe59899022d57fdeaa155729772f0b1c64bb1bd057d5e2406af098144"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T14-05-58Z/sigil-2026-04-08T14-05-58Z-darwin-x64.tar.gz"
      sha256 "683ec1a1c97eeb043bafb5372090b9a6b940fb731976b99e69f9e382a6cb8643"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T14-05-58Z/sigil-2026-04-08T14-05-58Z-linux-arm64.tar.gz"
      sha256 "026fe6327ff6d909f8fa4fc8112c182f9f81160e1f76855704e0ca97f6b159c4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T14-05-58Z/sigil-2026-04-08T14-05-58Z-linux-x64.tar.gz"
      sha256 "3d58e1c11d89b4e56cd01b736dceb4038bf342435b2d037d8c2e457fa1c2e7f3"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-08T14-05-58Z", shell_output("#{bin}/sigil --version")
  end
end
