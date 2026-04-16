class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-16T00-41-13Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T00-41-13Z/sigil-2026-04-16T00-41-13Z-darwin-arm64.tar.gz"
      sha256 "063ed0ecba20d10ad8e3385afa2c1eaaaf55e5e0faa52b93a3111ccb14552eed"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T00-41-13Z/sigil-2026-04-16T00-41-13Z-darwin-x64.tar.gz"
      sha256 "ebbeff73e56c3e0a3f6609d520b00bf2f0eecbbb688fdc2aae8b8c96d247fee5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T00-41-13Z/sigil-2026-04-16T00-41-13Z-linux-arm64.tar.gz"
      sha256 "91010059b3198a97e57225cf89302cfcb20ad1fb172d5fa7c28abc26f45524ca"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-16T00-41-13Z/sigil-2026-04-16T00-41-13Z-linux-x64.tar.gz"
      sha256 "7c9a3f66437078fb650bd757b3326fb69d63cc1b77a8e6eaf1b3a999fcb5bfa5"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-16T00-41-13Z", shell_output("#{bin}/sigil --version")
  end
end
