class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-18T03-16-03Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-18T03-16-03Z/sigil-2026-03-18T03-16-03Z-darwin-arm64.tar.gz"
      sha256 "e7ad42a67facf6382b6bf2abbe7f87284385840c1a9b51e474b8f08e6cda3b12"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-18T03-16-03Z/sigil-2026-03-18T03-16-03Z-darwin-x64.tar.gz"
      sha256 "fe6c3a77772e84803ff7c3ffcc79176ed0332769130ea31689dad41665a80259"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-18T03-16-03Z/sigil-2026-03-18T03-16-03Z-linux-arm64.tar.gz"
      sha256 "4edd9bbda4f3ffb2a523d494e493fd6ae8d5dfcafa1e3d2a25d575dff8cbf64a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-18T03-16-03Z/sigil-2026-03-18T03-16-03Z-linux-x64.tar.gz"
      sha256 "12d06d484a2059557aa35562b0e51a24872075560a2e4d8a28a27821415407c7"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-18T03-16-03Z", shell_output("#{bin}/sigil --version")
  end
end
