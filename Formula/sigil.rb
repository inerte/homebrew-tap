class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-04T20-23-07Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T20-23-07Z/sigil-2026-04-04T20-23-07Z-darwin-arm64.tar.gz"
      sha256 "22a89cb4b1b020c97c4145fb6a54f99b740fc34311b071e3891546e15bcf74c6"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T20-23-07Z/sigil-2026-04-04T20-23-07Z-darwin-x64.tar.gz"
      sha256 "59a1e850f58f90a0046e5dd8cde1f668e814c3790cc6c2c667fb268982428b40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T20-23-07Z/sigil-2026-04-04T20-23-07Z-linux-arm64.tar.gz"
      sha256 "a3becfe0f71d839cb77686b1b4d30ba7fadaa30bc026615150f061ab5adcd11e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T20-23-07Z/sigil-2026-04-04T20-23-07Z-linux-x64.tar.gz"
      sha256 "6775b38840de7972f36830001eaa5f317b69749a7dc5e91f8ed817ceaf3e77f5"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-04T20-23-07Z", shell_output("#{bin}/sigil --version")
  end
end
