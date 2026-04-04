class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-04T21-28-28Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-28-28Z/sigil-2026-04-04T21-28-28Z-darwin-arm64.tar.gz"
      sha256 "d8ada59309180def8a0470cab51ebe32deced5b16c8ef761ade2a2669b603720"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-28-28Z/sigil-2026-04-04T21-28-28Z-darwin-x64.tar.gz"
      sha256 "43f296c5dc70390e0427059eac5929973b9894193d219ae6c34bd43a26aa716e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-28-28Z/sigil-2026-04-04T21-28-28Z-linux-arm64.tar.gz"
      sha256 "fdebba1491eeb3d9197308459f858db152547e7578d0900e34a106cdce334d62"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-04T21-28-28Z/sigil-2026-04-04T21-28-28Z-linux-x64.tar.gz"
      sha256 "1be2ebc51b0291cc4516088ceaa44db9123d1f42e7d11f2c129e41e0726be2df"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-04T21-28-28Z", shell_output("#{bin}/sigil --version")
  end
end
