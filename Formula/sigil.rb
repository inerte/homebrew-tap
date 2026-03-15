class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-15T23-21-06Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T23-21-06Z/sigil-2026-03-15T23-21-06Z-darwin-arm64.tar.gz"
      sha256 "84747e1a01a5980cd7e6b8c87935320cf255ce8e2f39797d848caa6a832460a6"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T23-21-06Z/sigil-2026-03-15T23-21-06Z-darwin-x64.tar.gz"
      sha256 "94f6c9d3920028e21fbbbc798e3f196b6dda1df3266997a4db33f16bef6a0099"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T23-21-06Z/sigil-2026-03-15T23-21-06Z-linux-arm64.tar.gz"
      sha256 "f040e5273253d8cf0faa169e7958011c52d9c7008f947b7c34b6b8d081d5a050"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-15T23-21-06Z/sigil-2026-03-15T23-21-06Z-linux-x64.tar.gz"
      sha256 "ead867c9cd6b73dab916c7154eff7a4aa13c84ee8282dde41b2e5da451cf31ae"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-15T23-21-06Z", shell_output("#{bin}/sigil --version")
  end
end
