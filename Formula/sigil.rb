class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-14T00-55-06Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T00-55-06Z/sigil-2026-04-14T00-55-06Z-darwin-arm64.tar.gz"
      sha256 "45400e2786c211b02b4699f8cf1901611b348bc0abe07d661de63cb5b24d348a"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T00-55-06Z/sigil-2026-04-14T00-55-06Z-darwin-x64.tar.gz"
      sha256 "a0080c3250a86d2fe2e409676d22f9c2fc0c2ea436a655ad48b96d5b932985ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T00-55-06Z/sigil-2026-04-14T00-55-06Z-linux-arm64.tar.gz"
      sha256 "ab5da2f9ff7a262add1fe3ab34fb51ad02191e34e6ab263fa91d5e589c5a8c43"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-14T00-55-06Z/sigil-2026-04-14T00-55-06Z-linux-x64.tar.gz"
      sha256 "8d3d74d3bf722d9602bab0629e092b8a74eb7f38af0f797fe9eadd4b60e4d8e7"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-14T00-55-06Z", shell_output("#{bin}/sigil --version")
  end
end
