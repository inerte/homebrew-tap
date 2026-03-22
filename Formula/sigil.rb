class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-22T22-29-52Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T22-29-52Z/sigil-2026-03-22T22-29-52Z-darwin-arm64.tar.gz"
      sha256 "a609cd0054c988f3a558317335c83b9ef862d4902b6e5d6c2cdb5fb70f373f67"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T22-29-52Z/sigil-2026-03-22T22-29-52Z-darwin-x64.tar.gz"
      sha256 "b9b46da1c2e6998e6a64b222025e69426a5644cbd14228a238669ebc21bcc7ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T22-29-52Z/sigil-2026-03-22T22-29-52Z-linux-arm64.tar.gz"
      sha256 "37f7f89953061588de646d5ef0c43d4752761aee5009bbd3fdcd639ac60ca567"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T22-29-52Z/sigil-2026-03-22T22-29-52Z-linux-x64.tar.gz"
      sha256 "517f314598719444195145cbd909f923186c490d9135f541d87cd89b247f407d"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-22T22-29-52Z", shell_output("#{bin}/sigil --version")
  end
end
