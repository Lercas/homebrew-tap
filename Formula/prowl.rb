class Prowl < Formula
  desc "Fast, configurable secret scanner for code, git, images, buckets, and live apps"
  homepage "https://github.com/Lercas/prowl"
  version "1.0.2"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Lercas/prowl/releases/download/v1.0.2/prowl-darwin-arm64"
      sha256 "4c8ad40210e8425e2d86c24444c9f23bead71e073f5a1781bb510514fb933cf0"
    end
    on_intel do
      url "https://github.com/Lercas/prowl/releases/download/v1.0.2/prowl-darwin-amd64"
      sha256 "69420b21c6239c42668bd1d475d36e9b76d6249fec03d6552d6ff0c8249732ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Lercas/prowl/releases/download/v1.0.2/prowl-linux-arm64"
      sha256 "de59a262dc6fd049856fd1e09fa6c58492ee96841e2880fa4e550de20d021dd3"
    end
    on_intel do
      url "https://github.com/Lercas/prowl/releases/download/v1.0.2/prowl-linux-amd64"
      sha256 "cd9dadb0974fb0d04ed9cf2391b3dd71014dcff37cd9d4125a493c6326fce33e"
    end
  end

  def install
    bin.install Dir["prowl-*"].first => "prowl"
  end

  test do
    assert_match "prowl", shell_output("#{bin}/prowl version")
  end
end
