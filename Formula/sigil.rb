class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-15T02-40-05Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T02-40-05Z/sigil-2026-04-15T02-40-05Z-darwin-arm64.tar.gz"
      sha256 "f4f32d6b972d5bac588ee83a6dae06fa267f6e6e05c271251e9bf714d184ba00"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T02-40-05Z/sigil-2026-04-15T02-40-05Z-darwin-x64.tar.gz"
      sha256 "760957999596b1aabf815973b5cc744953b1b925bc2ead12b2abe98a0fc64cec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T02-40-05Z/sigil-2026-04-15T02-40-05Z-linux-arm64.tar.gz"
      sha256 "b900dea70481accf12205d50f013eb774934c3b45835f8e0d244ab453d79abb6"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T02-40-05Z/sigil-2026-04-15T02-40-05Z-linux-x64.tar.gz"
      sha256 "55f57752da87b5a137c085ccf6a260f57eafab218543ec1924e84906c67ee034"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-15T02-40-05Z", shell_output("#{bin}/sigil --version")
  end
end
