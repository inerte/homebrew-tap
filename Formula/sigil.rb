class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T22-13-03Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T22-13-03Z/sigil-2026-04-16T22-13-03Z-darwin-arm64.tar.gz"
      sha256 "3800c3570d32cbd97004904a188c4db252a1dd72c39ceb8c4ab871af57e98b4a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T22-13-03Z/sigil-2026-04-16T22-13-03Z-darwin-x64.tar.gz"
      sha256 "f62d55a19453ab9536cc56a3640543285eadc06f2a9b39618f99cc7220704519"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T22-13-03Z/sigil-2026-04-16T22-13-03Z-linux-arm64.tar.gz"
      sha256 "bf272989d544080a8f54da6d645b798e14a4e164960ecde2537f51a8c5e842e3"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T22-13-03Z/sigil-2026-04-16T22-13-03Z-linux-x64.tar.gz"
      sha256 "4cfc92e86e90d069f776c0163ef57da621e854c3e7e280633f07b427e8e51348"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-16T22-13-03Z", shell_output("#{bin}/sigil --version")
  end
end
