class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.0.8"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.8/garden-linux-aarch64-static.tar.gz"
      sha256 "c430a41dd2d7feb536152c4c7b2e2c5046c14a63f8b47f379c93ec545a34744c"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.8/garden-linux-amd64-static.tar.gz"
      sha256 "c430a41dd2d7feb536152c4c7b2e2c5046c14a63f8b47f379c93ec545a34744c"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.8/garden-macos-aarch64.tar.gz"
      sha256 "9fe7bd967edd5d34716531addcff97342ba8d87cb5217e12eb278b6f43311f7a"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.8/garden-macos-amd64.tar.gz"
      sha256 "30d5f148a46e24841a48d24895dcf315fb33a46a25da03e7c0942d61b5b5dce5"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
