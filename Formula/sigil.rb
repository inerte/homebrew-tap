class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-24T21-46-16Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-46-16Z/sigil-2026-04-24T21-46-16Z-darwin-arm64.tar.gz"
      sha256 "2b0b36334b434362c7eafd48fa266ffaef40e111360c9ede773a8ff00a670495"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-46-16Z/sigil-2026-04-24T21-46-16Z-darwin-x64.tar.gz"
      sha256 "25a6772fe532817236635dadaff581947baa8faed3c87a8cc5109130181a8e46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-46-16Z/sigil-2026-04-24T21-46-16Z-linux-arm64.tar.gz"
      sha256 "0207b07c99238302999591e05b81c63b6d7437a1e1bcfe9ce3f6c8a8e84a8ad7"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T21-46-16Z/sigil-2026-04-24T21-46-16Z-linux-x64.tar.gz"
      sha256 "d773be8c53be4224817d7c310205d28ed07547df312790993d7d0c6679a9390c"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-24T21-46-16Z", shell_output("#{bin}/sigil --version")
  end
end
