class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T19-09-39Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-09-39Z/sigil-2026-04-16T19-09-39Z-darwin-arm64.tar.gz"
      sha256 "c5e29fb624802d4be4f726b28012cdf54ad3b2145afc8fbd735b87256d60c31b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-09-39Z/sigil-2026-04-16T19-09-39Z-darwin-x64.tar.gz"
      sha256 "a40cdf5da2d1436995ce4b71f897dbc819e097ad2265b3284d22c07bbeee8db7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-09-39Z/sigil-2026-04-16T19-09-39Z-linux-arm64.tar.gz"
      sha256 "9136e07236b832bd372549ec47f359d64c9b1576a6326c44c4d9c3b9b1015c83"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T19-09-39Z/sigil-2026-04-16T19-09-39Z-linux-x64.tar.gz"
      sha256 "fe6cbb93ff257fa1fbfce54e69071eba8244e0178c6257ea394acb0005deee3e"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-16T19-09-39Z", shell_output("#{bin}/sigil --version")
  end
end
