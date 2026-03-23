class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-23T02-46-44Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T02-46-44Z/sigil-2026-03-23T02-46-44Z-darwin-arm64.tar.gz"
      sha256 "d173ccaa96d69c24a78136222824fef3ed8cf24196ce88071458b1c0c6b5cb51"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T02-46-44Z/sigil-2026-03-23T02-46-44Z-darwin-x64.tar.gz"
      sha256 "de593135809776d75b7c81903aa918c17d1f274c7c5fd101cf256794cceeb98c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T02-46-44Z/sigil-2026-03-23T02-46-44Z-linux-arm64.tar.gz"
      sha256 "f906bac52c1b5bfb554e65656f27d084e24de0d23049b2706ecb8586313457d7"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-23T02-46-44Z/sigil-2026-03-23T02-46-44Z-linux-x64.tar.gz"
      sha256 "418185a8054e20d5ae4ca613aa967ec20bbd63a6eb336c5a01bb2fb37740c68e"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-23T02-46-44Z", shell_output("#{bin}/sigil --version")
  end
end
