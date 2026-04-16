class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T19-57-44Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-57-44Z/sigil-2026-04-16T19-57-44Z-darwin-arm64.tar.gz"
      sha256 "475f689d1b20671fabd5c811e53f4a96ff1ece1f4ecfa196183cfbdeb958931d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-57-44Z/sigil-2026-04-16T19-57-44Z-darwin-x64.tar.gz"
      sha256 "a04c0a71808d1288ba935b48f9393b063e773febc8e18754adcec10c7d243544"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-57-44Z/sigil-2026-04-16T19-57-44Z-linux-arm64.tar.gz"
      sha256 "2feb87a901e076080e15b7e06254cba45fb8934331c2923eb22feb607349dd8e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-57-44Z/sigil-2026-04-16T19-57-44Z-linux-x64.tar.gz"
      sha256 "f665c462873e77a46cce0d3b396a039b7a9e15cddad0ea04340fa85d79318f36"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-16T19-57-44Z", shell_output("#{bin}/sigil --version")
  end
end
