class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-03T14-09-25Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-09-25Z/sigil-2026-05-03T14-09-25Z-darwin-arm64.tar.gz"
      sha256 "69c06dd08f1817e8030437cd2434281eefcc52a64d582d4801647cb3b6312b4e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-09-25Z/sigil-2026-05-03T14-09-25Z-darwin-x64.tar.gz"
      sha256 "dc083eec7c2668236ff042de4e0c7bc285a486e112ea063c8ea9992dd7bea7e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-09-25Z/sigil-2026-05-03T14-09-25Z-linux-arm64.tar.gz"
      sha256 "aa991822497d091c47315c47eae86e5ecc3c7231d797818e348e560144167d93"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-09-25Z/sigil-2026-05-03T14-09-25Z-linux-x64.tar.gz"
      sha256 "b7a27740d3d37c12b6504d7ff9f60ba6f907674149cfbfeb012651b70c8c41fa"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-03T14-09-25Z", shell_output("#{bin}/sigil --version")
  end
end
