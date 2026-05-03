class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-05-03T14-36-37Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-36-37Z/sigil-2026-05-03T14-36-37Z-darwin-arm64.tar.gz"
      sha256 "2fc0eb01744690d4a045adfa921d52d97156835e38e775650a6525964b56f11e"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-36-37Z/sigil-2026-05-03T14-36-37Z-darwin-x64.tar.gz"
      sha256 "c910a4ab02af56d839983dfbb7ebdb7bd2c3f901739011a7c26bddb1a44b9116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-36-37Z/sigil-2026-05-03T14-36-37Z-linux-arm64.tar.gz"
      sha256 "e19090d8868f2dab5d774d9c322ad1799a475aeb459b371fcd30430dbf1bcea8"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-05-03T14-36-37Z/sigil-2026-05-03T14-36-37Z-linux-x64.tar.gz"
      sha256 "377f9009242a5dda593bd3b0f662c4d6219a19b4019a11dc3bb81b31d626c909"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-05-03T14-36-37Z", shell_output("#{bin}/sigil --version")
  end
end
