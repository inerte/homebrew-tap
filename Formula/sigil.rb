class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-29T01-22-13Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-29T01-22-13Z/sigil-2026-03-29T01-22-13Z-darwin-arm64.tar.gz"
      sha256 "b55643b221f7b8e11852f44af57bbf176c17cf9bcd075e53ef0ee6da52e7c820"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-29T01-22-13Z/sigil-2026-03-29T01-22-13Z-darwin-x64.tar.gz"
      sha256 "59a825975f5b8d31e068ef5f58ff31ff12b7013c76d392e47010cd6b258ad0d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-29T01-22-13Z/sigil-2026-03-29T01-22-13Z-linux-arm64.tar.gz"
      sha256 "117ed0c0e5c65157cfd31e9c76d65883d1607b4cd4b439a7ead976658b52f1e5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-29T01-22-13Z/sigil-2026-03-29T01-22-13Z-linux-x64.tar.gz"
      sha256 "20a53cd1e6c139eeaa3ea942b87d9bd99e07b1643e50d66ccc9d6d3be880380e"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-29T01-22-13Z", shell_output("#{bin}/sigil --version")
  end
end
