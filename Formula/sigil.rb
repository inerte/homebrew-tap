class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-09T00-54-13Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-09T00-54-13Z/sigil-2026-04-09T00-54-13Z-darwin-arm64.tar.gz"
      sha256 "b4b6f557aebe0d927e85b988b3191556140ec65be03ede5f35c7c597dfccda77"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-09T00-54-13Z/sigil-2026-04-09T00-54-13Z-darwin-x64.tar.gz"
      sha256 "c7ef28f7dfadb46e82c667334f4ddfdcca960a03520109b0b41a45da7cf405e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-09T00-54-13Z/sigil-2026-04-09T00-54-13Z-linux-arm64.tar.gz"
      sha256 "59b1ba56caac87a7478ecc4384ff595858c436a2c1c05e98909837c16b9d5a51"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-09T00-54-13Z/sigil-2026-04-09T00-54-13Z-linux-x64.tar.gz"
      sha256 "6a0e1bede056346c4afd3a74c66c00fae3a3326f231a02bf32e9793af32caf4b"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-09T00-54-13Z", shell_output("#{bin}/sigil --version")
  end
end
