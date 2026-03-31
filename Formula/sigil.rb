class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-31T21-09-14Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T21-09-14Z/sigil-2026-03-31T21-09-14Z-darwin-arm64.tar.gz"
      sha256 "443036153704caa71a5f4ed64e3abc088b4b7d96c45bf66130303149ee221816"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T21-09-14Z/sigil-2026-03-31T21-09-14Z-darwin-x64.tar.gz"
      sha256 "0c3530f33151b6142c42c9abec668e7e6104bbe3084f46f392e787fd272f182e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T21-09-14Z/sigil-2026-03-31T21-09-14Z-linux-arm64.tar.gz"
      sha256 "1616c80102fd4c2a679a07acd1be2c049b495e9635bc3e5321696b164f9e5768"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T21-09-14Z/sigil-2026-03-31T21-09-14Z-linux-x64.tar.gz"
      sha256 "f7e91a857a237833d42049b079f62454c4b21f6211a8e5af64004d117abf308f"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-31T21-09-14Z", shell_output("#{bin}/sigil --version")
  end
end
