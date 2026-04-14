class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-13T16-13-30Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-13T16-13-30Z/sigil-2026-04-13T16-13-30Z-darwin-arm64.tar.gz"
      sha256 "1ccef9acd99a3d4e592a6a457f2eb10b2401f5b46e35373d03b655c33dd57b95"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-13T16-13-30Z/sigil-2026-04-13T16-13-30Z-darwin-x64.tar.gz"
      sha256 "30284b84d723bfe3472ba6e26390e18af2c4792fd14c9ac5e049ce7c837293bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-13T16-13-30Z/sigil-2026-04-13T16-13-30Z-linux-arm64.tar.gz"
      sha256 "2544f4015c9ba6fc887147bc5ca431e1e1d73f518ce43f49d9787e0005a85e25"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-13T16-13-30Z/sigil-2026-04-13T16-13-30Z-linux-x64.tar.gz"
      sha256 "d9c421b903e4e94294f64c5a7ce3cb2375573d6b0bd40ff59bfbcf3c4f81c5ff"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-04-13T16-13-30Z", shell_output("#{bin}/sigil --version")
  end
end
