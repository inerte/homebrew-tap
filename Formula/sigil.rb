class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-20T21-49-24Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T21-49-24Z/sigil-2026-03-20T21-49-24Z-darwin-arm64.tar.gz"
      sha256 "bd461f46343fee62b845975601e6e2319cd21bc155716672b83b2ddc983b1b0f"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T21-49-24Z/sigil-2026-03-20T21-49-24Z-darwin-x64.tar.gz"
      sha256 "a03484074552189f15294ebedfb0e5ca47e9b8b056c21e3b0d39b12d250dfa8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T21-49-24Z/sigil-2026-03-20T21-49-24Z-linux-arm64.tar.gz"
      sha256 "9d3951dc59a71806e7987e66f43266c28581e860f24da79cb97abffeb15c1398"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-20T21-49-24Z/sigil-2026-03-20T21-49-24Z-linux-x64.tar.gz"
      sha256 "e940fe87964640ad6290b76120ab4bf48ee79ff69b646c9989a23528c7802287"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-20T21-49-24Z", shell_output("#{bin}/sigil --version")
  end
end
