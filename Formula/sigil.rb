class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T14-01-40Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-01-40Z/sigil-2026-04-16T14-01-40Z-darwin-arm64.tar.gz"
      sha256 "bc23e78c3301e61cc1d5ede3f9b076402f699c40023e48af93996a690d62cbb1"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-01-40Z/sigil-2026-04-16T14-01-40Z-darwin-x64.tar.gz"
      sha256 "eb8b146593fe6e3175b8fe4116a2a4755cbfce9570776d92b3f519ec673e8f58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-01-40Z/sigil-2026-04-16T14-01-40Z-linux-arm64.tar.gz"
      sha256 "76fe1d23bab975b4c34e8daa9c126d6e270e113cd589b2ef168d65067d65fa4e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T14-01-40Z/sigil-2026-04-16T14-01-40Z-linux-x64.tar.gz"
      sha256 "5908fd1c11658d03b07941f6305bcd200e1e2c30c242af4061d8ea2efd5c8a03"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
  end

  test do
    assert_match "sigil 2026-04-16T14-01-40Z", shell_output("#{bin}/sigil --version")
  end
end
