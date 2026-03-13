class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-13T00-35-53Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-13T00-35-53Z/sigil-2026-03-13T00-35-53Z-darwin-arm64.tar.gz"
      sha256 "82be047bee426464fe229226a9a9440b4d3698b82fa6aab9442beea5a4991670"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-13T00-35-53Z/sigil-2026-03-13T00-35-53Z-darwin-x64.tar.gz"
      sha256 "2b3da9d3b6d43098893a53629b0c2e5323748c55fc7cb07d25238c4c2368d8b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-13T00-35-53Z/sigil-2026-03-13T00-35-53Z-linux-arm64.tar.gz"
      sha256 "b164ba44fa17860c69594f50fe7dce9a0b7596940eaa2f1c6255d1dc77cf7766"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-13T00-35-53Z/sigil-2026-03-13T00-35-53Z-linux-x64.tar.gz"
      sha256 "67e9601f7351c91f694b741523da8da5c87b22cdd33427a63f41f742f4958c8f"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-13T00-35-53Z", shell_output("#{bin}/sigil --version")
  end
end
