class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-23T03-04-12Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T03-04-12Z/sigil-2026-03-23T03-04-12Z-darwin-arm64.tar.gz"
      sha256 "5d5e6a2265f79ccc327c21a1c3e90392f7b1e7d962511eddab6770fb2873ddc3"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T03-04-12Z/sigil-2026-03-23T03-04-12Z-darwin-x64.tar.gz"
      sha256 "2cf040ddf871ecb462dfd917f3cd04826840a75a6c00fc18ab12d47db13ff7d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T03-04-12Z/sigil-2026-03-23T03-04-12Z-linux-arm64.tar.gz"
      sha256 "5b6c4f90bdf0bc3a5ac8ad8a36111a73de18dd023321b1dd68ac3d40eb4693e4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T03-04-12Z/sigil-2026-03-23T03-04-12Z-linux-x64.tar.gz"
      sha256 "036391153163e4b4ca5286169a46edaa6117665b1ed14f2b39d273ff8625702b"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-23T03-04-12Z", shell_output("#{bin}/sigil --version")
  end
end
