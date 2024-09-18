class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.12"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.12/garden-linux-aarch64-static.tar.gz"
      sha256 "136254682510e14a5f7496cef41de568f714b7b282d6206d4f4e77bc0d52e44a"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.12/garden-linux-amd64-static.tar.gz"
      sha256 "136254682510e14a5f7496cef41de568f714b7b282d6206d4f4e77bc0d52e44a"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.12/garden-macos-aarch64.tar.gz"
      sha256 "e3098af9e392bec36fd50dcc70b45e83541c23c591b1337532818702f926b1be"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.12/garden-macos-amd64.tar.gz"
      sha256 "c4f6d735ca319df6e1e18c0970feb9f84599809a087d9c8dc995dbe6b6a03337"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
