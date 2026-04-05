class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-05T03-27-05Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-27-05Z/sigil-2026-04-05T03-27-05Z-darwin-arm64.tar.gz"
      sha256 "932edb357d23782d28d8dc98b126faba2a483bac53b3536fae1ea6612675e719"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-27-05Z/sigil-2026-04-05T03-27-05Z-darwin-x64.tar.gz"
      sha256 "06815ab37daed5677e8db7d2e41c015c45816273ec0699380846c77888f4c884"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-27-05Z/sigil-2026-04-05T03-27-05Z-linux-arm64.tar.gz"
      sha256 "f4045c096c3f6639778eeec43bdb60738249c8ee10a13b3bcc9b489fefe1baab"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-05T03-27-05Z/sigil-2026-04-05T03-27-05Z-linux-x64.tar.gz"
      sha256 "2154a74e2ec186e17f26054ba839071107fdf2f04e509e03554307bd97e5a557"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-05T03-27-05Z", shell_output("#{bin}/sigil --version")
  end
end
