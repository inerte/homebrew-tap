class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-19T14-22-24Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T14-22-24Z/sigil-2026-04-19T14-22-24Z-darwin-arm64.tar.gz"
      sha256 "5f2e78700c3e09e2fd0fc5df48633ab8eeaf7dc48e664da59581bc420b2feb44"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T14-22-24Z/sigil-2026-04-19T14-22-24Z-darwin-x64.tar.gz"
      sha256 "81f1a8707ee8d20faafd07fafe288572c73e6f8a2795ab21486d6102687fed94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T14-22-24Z/sigil-2026-04-19T14-22-24Z-linux-arm64.tar.gz"
      sha256 "7999f493039a25da9bb3c438b555edaeebd4e6986ddc5cf0422213b26ac1642a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T14-22-24Z/sigil-2026-04-19T14-22-24Z-linux-x64.tar.gz"
      sha256 "aaf4806625493747059563a4d02d8f046c5b3db61aad6928bef4ebb4ada59dc3"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-19T14-22-24Z", shell_output("#{bin}/sigil --version")
  end
end
