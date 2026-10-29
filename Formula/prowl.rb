class Prowl < Formula
  desc "Fast, configurable secret scanner for code, git, images, buckets, and live apps"
  homepage "https://github.com/Lercas/prowl"
  license "PolyForm-Noncommercial-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/Lercas/prowl/releases/download/v1.4.0/prowl-darwin-arm64"
      sha256 "78c5b4d32e1a37efb4d7b2c439a36e1d6d4e4387e0d98163b4cb9d1474e6bdcd"
    end
    on_intel do
      url "https://github.com/Lercas/prowl/releases/download/v1.4.0/prowl-darwin-amd64"
      sha256 "27b927e57363107b9defbc598a99b202bf6f80e49191e3b21932d8d6329a70cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Lercas/prowl/releases/download/v1.4.0/prowl-linux-arm64"
      sha256 "2ae5b599607e58e915ed91809078ba4e500478239d6bb7e41a6bb6d11a34d593"
    end
    on_intel do
      url "https://github.com/Lercas/prowl/releases/download/v1.4.0/prowl-linux-amd64"
      sha256 "b26393b49023594e3f73745f785ae87284ea4e80bd662963231933015c840b5c"
    end
  end

  def install
    bin.install Dir["prowl-*"].first => "prowl"
  end

  test do
    assert_match "prowl", shell_output("#{bin}/prowl version")
  end
end
