class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-18T14-51-31Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T14-51-31Z/sigil-2026-04-18T14-51-31Z-darwin-arm64.tar.gz"
      sha256 "22e88aa05b60268f42d472bc7b29364da73ba3aa87249e3a26ce1f4bd9ea83e2"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T14-51-31Z/sigil-2026-04-18T14-51-31Z-darwin-x64.tar.gz"
      sha256 "e2b3c62557e67a2ceda92c54eb49015e7208e18e1a1c52518646a4b9b3de56f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T14-51-31Z/sigil-2026-04-18T14-51-31Z-linux-arm64.tar.gz"
      sha256 "0fa25388522e5fdf27da6b839e13f47c3d00f45134a13edd79342ed96eed6d53"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-18T14-51-31Z/sigil-2026-04-18T14-51-31Z-linux-x64.tar.gz"
      sha256 "8cf3bdf29694c31c4ae51dd752739417427d9690cb0d4849fb765d5dfbb9e582"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-18T14-51-31Z", shell_output("#{bin}/sigil --version")
  end
end
