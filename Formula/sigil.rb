class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-15T15-18-40Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T15-18-40Z/sigil-2026-04-15T15-18-40Z-darwin-arm64.tar.gz"
      sha256 "305d37d5f3ea2feeb6694f3529e633de402a48282ba61a57b08224c3d6784413"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T15-18-40Z/sigil-2026-04-15T15-18-40Z-darwin-x64.tar.gz"
      sha256 "fb893042c0a0d1ccbdb2b2aed0516adbcd2ed0821a5a48f3d656144a208c91fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T15-18-40Z/sigil-2026-04-15T15-18-40Z-linux-arm64.tar.gz"
      sha256 "370bf5d30c41173d01d2e85e6f0e565e7d25bd730be73a985cf1afefd3fb6b24"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T15-18-40Z/sigil-2026-04-15T15-18-40Z-linux-x64.tar.gz"
      sha256 "d64f9c4d9377123a1c3b52a2e42cd71206a5de4a5ae67f47d70d514ca9b9d5a6"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-15T15-18-40Z", shell_output("#{bin}/sigil --version")
  end
end
