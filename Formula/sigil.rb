class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T03-49-16Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-49-16Z/sigil-2026-04-05T03-49-16Z-darwin-arm64.tar.gz"
      sha256 "b8fe597ba830a12c042503cb1afb512defc20a635f9f29c0f7cd998e82148d41"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-49-16Z/sigil-2026-04-05T03-49-16Z-darwin-x64.tar.gz"
      sha256 "a490366983ca8c428130886f044d17e437b306cef215e8499ad2a1fc9f4f1303"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-49-16Z/sigil-2026-04-05T03-49-16Z-linux-arm64.tar.gz"
      sha256 "b984702f8aacc7c3d4fc359a9630787c5e16ffc5190e59af9cfc4c48a443ae33"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-49-16Z/sigil-2026-04-05T03-49-16Z-linux-x64.tar.gz"
      sha256 "cd91044108e3d6fbed6b84fd1cfbe39795cdce24279e2963341e5d877aa63f60"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T03-49-16Z", shell_output("#{bin}/sigil --version")
  end
end
