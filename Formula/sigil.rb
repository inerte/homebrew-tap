class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-17T20-49-58Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T20-49-58Z/sigil-2026-04-17T20-49-58Z-darwin-arm64.tar.gz"
      sha256 "f86e5573ab81889fa4ba51934d24be3fb1addbf4173f42a1a7e8e8e7c0129980"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T20-49-58Z/sigil-2026-04-17T20-49-58Z-darwin-x64.tar.gz"
      sha256 "92d47bbd702bc0c1f0f5b2dafd630fabdb3111c7ae4b10dcdcda6415989da5b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T20-49-58Z/sigil-2026-04-17T20-49-58Z-linux-arm64.tar.gz"
      sha256 "e178a4d8279845e52838c26b760124dd7acde0a2fcb6bc142578bfc5b8a4541f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T20-49-58Z/sigil-2026-04-17T20-49-58Z-linux-x64.tar.gz"
      sha256 "4f47d0d16738e3289490fa90fe2da9f49f8d6ad065f249e0a85bb9ee1b4cb4d8"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-17T20-49-58Z", shell_output("#{bin}/sigil --version")
  end
end
