class Sigil < Formula
  desc "Machine-first programming language designed for canonical code generation"
  homepage "https://github.com/inerte/sigil"
  version "2026-04-19T02-53-27Z"
  license "MIT"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T02-53-27Z/sigil-2026-04-19T02-53-27Z-darwin-arm64.tar.gz"
      sha256 "5220bd7ad083ffd770a02155cd8d4581bdda8c383ada88922e8cb4f95db197c5"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T02-53-27Z/sigil-2026-04-19T02-53-27Z-darwin-x64.tar.gz"
      sha256 "a4d3bb1fad2d31f115e489b5876d62298cf7c373e6fadc3dfc63d851ea706ab8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T02-53-27Z/sigil-2026-04-19T02-53-27Z-linux-arm64.tar.gz"
      sha256 "5e7ee7cdeac181bcc70df63faf990df9af8d86187f4fd19386afc31eafec8152"
    else
      url "https://github.com/inerte/sigil/releases/download/2026-04-19T02-53-27Z/sigil-2026-04-19T02-53-27Z-linux-x64.tar.gz"
      sha256 "47f5896c11eabcc6936221ab0e759c81db1684ae574c8d8f84663bdf69b4f12d"
    end
  end

  def install
    bin.install "sigil"
    pkgshare.install "README.txt"
    pkgshare.install "runtime"
  end

  test do
    assert_match "sigil 2026-04-19T02-53-27Z", shell_output("#{bin}/sigil --version")
  end
end
