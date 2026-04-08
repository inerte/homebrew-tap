class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-08T17-33-34Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T17-33-34Z/sigil-2026-04-08T17-33-34Z-darwin-arm64.tar.gz"
      sha256 "efa52f713365a08c9ecd9ea93ce92a8945ed61b1d8ca748e559754c862cdeda4"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T17-33-34Z/sigil-2026-04-08T17-33-34Z-darwin-x64.tar.gz"
      sha256 "65c18c003e5b7cd78594b4861466a455c5c2a3c8d7cd22dcb75ca604e0ff7de0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T17-33-34Z/sigil-2026-04-08T17-33-34Z-linux-arm64.tar.gz"
      sha256 "870a4d5cc1fb2399f4e7a2b1813a9bea0b77961fe4a34d865f95ff2cc72b08fc"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-08T17-33-34Z/sigil-2026-04-08T17-33-34Z-linux-x64.tar.gz"
      sha256 "394dded164f9f796a5b44c1a3ef933763a3f0d9558678bd371ae942ad1f81a5f"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-08T17-33-34Z", shell_output("#{bin}/sigil --version")
  end
end
