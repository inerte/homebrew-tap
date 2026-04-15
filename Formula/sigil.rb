class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-15T02-09-31Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T02-09-31Z/sigil-2026-04-15T02-09-31Z-darwin-arm64.tar.gz"
      sha256 "261b5d20875448bfc18f7931b02f9107fca1d29c37a40141dd88a7d8e3c3b756"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T02-09-31Z/sigil-2026-04-15T02-09-31Z-darwin-x64.tar.gz"
      sha256 "ffcff0b6b114a5a20e445d3380c573afc5b684edfb1e9913c5368121c92e874c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T02-09-31Z/sigil-2026-04-15T02-09-31Z-linux-arm64.tar.gz"
      sha256 "e45cd5c3be8cda32589b8ed382c08b7b216088360ad10edbbc5ff3fb315d3886"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-15T02-09-31Z/sigil-2026-04-15T02-09-31Z-linux-x64.tar.gz"
      sha256 "78fef916832c02fc4cb601a3a893ebd7166dba6ef2a936bd4216a9dd51718483"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-15T02-09-31Z", shell_output("#{bin}/sigil --version")
  end
end
