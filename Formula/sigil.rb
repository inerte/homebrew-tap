class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-17T20-36-16Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T20-36-16Z/sigil-2026-04-17T20-36-16Z-darwin-arm64.tar.gz"
      sha256 "05b184c7093a121c4a0de122177444c15d22bdd41746b6bf984f49cc0e5587e3"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T20-36-16Z/sigil-2026-04-17T20-36-16Z-darwin-x64.tar.gz"
      sha256 "2052aed7b94e253c3dd22475a7c92d1fd3f9192137b59443dc1584915a3d9333"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T20-36-16Z/sigil-2026-04-17T20-36-16Z-linux-arm64.tar.gz"
      sha256 "19f1bc7a7f57432e3fecf86977d8588825f26c910afb48c44e117e549a5440cf"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-17T20-36-16Z/sigil-2026-04-17T20-36-16Z-linux-x64.tar.gz"
      sha256 "23a43fd9bb864eb73f7b89d1fe8aba295a2497129a760583ae37d5ea7b93034e"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-17T20-36-16Z", shell_output("#{bin}/sigil --version")
  end
end
