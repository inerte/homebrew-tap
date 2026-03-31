class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-31T01-03-31Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T01-03-31Z/sigil-2026-03-31T01-03-31Z-darwin-arm64.tar.gz"
      sha256 "00ec07e3dc3ea08ea2e402419f91f5837e8720e9adf3985870be020b3b127079"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T01-03-31Z/sigil-2026-03-31T01-03-31Z-darwin-x64.tar.gz"
      sha256 "7bc36673193d52a38fef7a47ece24d16341a852da06b77949b02039caf25628b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T01-03-31Z/sigil-2026-03-31T01-03-31Z-linux-arm64.tar.gz"
      sha256 "e58584e0a9d3189518294372bd07b8188a2b7c3ba0624aa0bcd0e8c32e462175"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-31T01-03-31Z/sigil-2026-03-31T01-03-31Z-linux-x64.tar.gz"
      sha256 "e8559d9cebba24b85ff6ec146d402dab6087ecea8cfb0ba51774757009a355bb"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-31T01-03-31Z", shell_output("#{bin}/sigil --version")
  end
end
