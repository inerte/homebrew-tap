class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T19-10-45Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-10-45Z/sigil-2026-04-16T19-10-45Z-darwin-arm64.tar.gz"
      sha256 "b49704b74aa0a80c14a5080bde8014272d8fe47318451b451604f4faf481050e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-10-45Z/sigil-2026-04-16T19-10-45Z-darwin-x64.tar.gz"
      sha256 "3bd28f949501f290946344cd3c27b12d6e77b29486bba648f039b47e9352ae91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-10-45Z/sigil-2026-04-16T19-10-45Z-linux-arm64.tar.gz"
      sha256 "f7f6b613fc88e8f4ff3f311d6082c2e88d5b9d1085338f9bfbb1fa3298f7843e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-10-45Z/sigil-2026-04-16T19-10-45Z-linux-x64.tar.gz"
      sha256 "2802243d58e645ec780826e9713df3fb0dc783ca9b4f7e94436562b9d9e0fe7c"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-16T19-10-45Z", shell_output("#{bin}/sigil --version")
  end
end
