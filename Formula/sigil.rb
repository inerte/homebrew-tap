class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-01T22-17-20Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-01T22-17-20Z/sigil-2026-04-01T22-17-20Z-darwin-arm64.tar.gz"
      sha256 "dcbe694fc5df5d935135f8ba873da3c7913056a351e93c41dcf92645de49fd8c"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-01T22-17-20Z/sigil-2026-04-01T22-17-20Z-darwin-x64.tar.gz"
      sha256 "f75e6e9ed7b486abaea018ac34af392a2274c295eb95f402a838e4088f22a277"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-01T22-17-20Z/sigil-2026-04-01T22-17-20Z-linux-arm64.tar.gz"
      sha256 "8659dd2e0f996888f812b5e1edae427c571e3c2779c10610a2b7481f11c1b2bd"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-01T22-17-20Z/sigil-2026-04-01T22-17-20Z-linux-x64.tar.gz"
      sha256 "2f9a79f648c37ce7cebb7e2613426bbdc06baf9106c1bbbaa6a61f52fb186004"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-01T22-17-20Z", shell_output("#{bin}/sigil --version")
  end
end
