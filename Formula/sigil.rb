class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T13-37-11Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T13-37-11Z/sigil-2026-04-05T13-37-11Z-darwin-arm64.tar.gz"
      sha256 "2667a99b8697e4f67f78a97a6eaaf13164efcd82f508525892ae1c091eb2001d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T13-37-11Z/sigil-2026-04-05T13-37-11Z-darwin-x64.tar.gz"
      sha256 "304d48312a6d0e69fb1d47583589bcc3bd3399a501cae5ea1b70c40c5ea9a766"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T13-37-11Z/sigil-2026-04-05T13-37-11Z-linux-arm64.tar.gz"
      sha256 "fb28166b89d94fc268feb9cd573a259bae9985414a2468f68b6f683a5d57fc8d"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T13-37-11Z/sigil-2026-04-05T13-37-11Z-linux-x64.tar.gz"
      sha256 "1d9494efd9139dbd107948a3650b4a730ba69e407d640ce75b93c4e1ef5a41ee"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T13-37-11Z", shell_output("#{bin}/sigil --version")
  end
end
