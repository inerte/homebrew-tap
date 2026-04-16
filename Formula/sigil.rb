class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T12-51-16Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T12-51-16Z/sigil-2026-04-16T12-51-16Z-darwin-arm64.tar.gz"
      sha256 "e8d704cdf243abd54e9a1ebe3d4d125fc5f6bca453dd33bd2c0c1956fb73d240"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T12-51-16Z/sigil-2026-04-16T12-51-16Z-darwin-x64.tar.gz"
      sha256 "e2246a80fec0c123f07264da09eeb56913628e85b04d9d77c5b0e96e051db18d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T12-51-16Z/sigil-2026-04-16T12-51-16Z-linux-arm64.tar.gz"
      sha256 "c91b268eb7ab85366986ff97d092fed3e76dc9510be4f244f115e8292c704947"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T12-51-16Z/sigil-2026-04-16T12-51-16Z-linux-x64.tar.gz"
      sha256 "df0dae65afe0f9f5538f7e16f0addc48d2406bb60a7112e757f2fa989777a052"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
  end

  test do
    assert_match "sigil 2026-04-16T12-51-16Z", shell_output("#{bin}/sigil --version")
  end
end
