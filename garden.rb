class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.10"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.10/garden-linux-aarch64-static.tar.gz"
      sha256 "b99e2d2f82ab4e0b40c1c3983fcf7af600576b1a6f382440c760b7c1019cc583"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.10/garden-linux-amd64-static.tar.gz"
      sha256 "b99e2d2f82ab4e0b40c1c3983fcf7af600576b1a6f382440c760b7c1019cc583"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.10/garden-macos-aarch64.tar.gz"
      sha256 "d509fb1a1cac3ed6c5e071b7cc2e67a350289dcd5150b9c5dfd2ae1d0f5313f1"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.10/garden-macos-amd64.tar.gz"
      sha256 "dee03b0725dfa31e830c97e97b3b59ffb1d9ac73112526386c458887a49a0108"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
