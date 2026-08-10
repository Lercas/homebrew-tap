class Prowl < Formula
  desc "Fast, configurable secret scanner for code, git, images, buckets, and live apps"
  homepage "https://github.com/Lercas/prowl"
  version "1.3.0"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Lercas/prowl/releases/download/v1.3.0/prowl-darwin-arm64"
      sha256 "c4a9e48e316d206635e1a8cc5fea232d008c656feb6b64ed9ebd4bdec283e024"
    end
    on_intel do
      url "https://github.com/Lercas/prowl/releases/download/v1.3.0/prowl-darwin-amd64"
      sha256 "99f81bb2ef459fbcd003ee1ee23a345f8995a296391085e9fe325812410c1816"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Lercas/prowl/releases/download/v1.3.0/prowl-linux-arm64"
      sha256 "a2888c787622d518d2dfb22d405e3b68b1b68027a70a5cfaa5f0c0ac298a2d61"
    end
    on_intel do
      url "https://github.com/Lercas/prowl/releases/download/v1.3.0/prowl-linux-amd64"
      sha256 "63f6623b2ab035c7a25e16b72f0fd34cfe923cf8f7dbbc9bbc8085704497680f"
    end
  end

  def install
    bin.install Dir["prowl-*"].first => "prowl"
  end

  test do
    assert_match "prowl", shell_output("#{bin}/prowl version")
  end
end
