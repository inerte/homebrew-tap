class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-17T14-45-44Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T14-45-44Z/sigil-2026-03-17T14-45-44Z-darwin-arm64.tar.gz"
      sha256 "843ce7dcbfab9b0b14466823aceaf8c8712cc080d30dd2319f607ad6a0a4bdaa"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T14-45-44Z/sigil-2026-03-17T14-45-44Z-darwin-x64.tar.gz"
      sha256 "3e0ee770d06689bf8c8d0431a7a609d1e711f7af487488b2ca1e5a46397fee47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T14-45-44Z/sigil-2026-03-17T14-45-44Z-linux-arm64.tar.gz"
      sha256 "7b69e7df6de2e4745c88e138fa7e5d2dc9f4752d409e0a8d019aa69af0f2d944"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-17T14-45-44Z/sigil-2026-03-17T14-45-44Z-linux-x64.tar.gz"
      sha256 "f231fc39db1278e26df06a23335fd9c7d7adab2c53af477805cae1baed7bef50"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-17T14-45-44Z", shell_output("#{bin}/sigil --version")
  end
end
