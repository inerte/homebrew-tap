class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-24T06-03-25Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T06-03-25Z/sigil-2026-04-24T06-03-25Z-darwin-arm64.tar.gz"
      sha256 "9fb8cf15a1f5498d5a5c6af857d1c165325327fbc1f5e07afd0f68dc78daaf24"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T06-03-25Z/sigil-2026-04-24T06-03-25Z-darwin-x64.tar.gz"
      sha256 "a37ba4486a4fffe05250bf3f9ceb6b98f588d03cbbf9d91f066b84ac87ef8f8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T06-03-25Z/sigil-2026-04-24T06-03-25Z-linux-arm64.tar.gz"
      sha256 "5b15aea9606d73d3270792a100a09f3ea1e0963d241e34ac467d2bc908999c74"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-24T06-03-25Z/sigil-2026-04-24T06-03-25Z-linux-x64.tar.gz"
      sha256 "c9209317534d5c991440d070e1aa5bc6b7de0bffbba15aa8bc4a0c8560351f1a"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-24T06-03-25Z", shell_output("#{bin}/sigil --version")
  end
end
