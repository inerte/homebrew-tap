class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-01T23-04-42Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T23-04-42Z/sigil-2026-05-01T23-04-42Z-darwin-arm64.tar.gz"
      sha256 "142383ae055ed61ff9e8446281578e58b1bf8a718b70540075488aa87eeebb95"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T23-04-42Z/sigil-2026-05-01T23-04-42Z-darwin-x64.tar.gz"
      sha256 "916574d4e9873423d6063b77b512fac9ff235b91caac0b93d30f075605467d27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T23-04-42Z/sigil-2026-05-01T23-04-42Z-linux-arm64.tar.gz"
      sha256 "cc2fbbedebd84c8837e1987198f207276eb56bcecc743f929d59834c18aa777b"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-01T23-04-42Z/sigil-2026-05-01T23-04-42Z-linux-x64.tar.gz"
      sha256 "d681861ff8b5b8270e459ce9b342f56f895703e7682bc480a22421de7772d93a"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-01T23-04-42Z", shell_output("#{bin}/sigil --version")
  end
end
