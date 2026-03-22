class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-03-22T23-29-35Z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T23-29-35Z/sigil-2026-03-22T23-29-35Z-darwin-arm64.tar.gz"
      sha256 "334625bb2b67ee4bce9a275e2731f43e233ec793652798228e5367d10e8f9a41"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T23-29-35Z/sigil-2026-03-22T23-29-35Z-darwin-x64.tar.gz"
      sha256 "2c0bfd78e376c04b87baaca3a548405355db3d9221d2a0b1e0e06267c50840f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T23-29-35Z/sigil-2026-03-22T23-29-35Z-linux-arm64.tar.gz"
      sha256 "9684e81875850d91d9b5f58a96a7686b4c4928784ee8d19781cd11a382128cda"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-03-22T23-29-35Z/sigil-2026-03-22T23-29-35Z-linux-x64.tar.gz"
      sha256 "eacea59d057263e4a4055807cfe6b5560c47f912815255cc82520278c91ef2be"
    end
  end

  def install
    bin.install Dir["*/sigil"].first => "sigil"
    pkgshare.install Dir["*/README.txt"].first => "README.txt"
  end

  test do
    assert_match "sigil 2026-03-22T23-29-35Z", shell_output("#{bin}/sigil --version")
  end
end
