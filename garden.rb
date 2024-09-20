class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.14"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.14/garden-linux-aarch64-static.tar.gz"
      sha256 "4c00ac7ff5c6500ec2f6bbda4af973ca99df522ce1543ffa2bb3a486caeff957"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.14/garden-linux-amd64-static.tar.gz"
      sha256 "4c00ac7ff5c6500ec2f6bbda4af973ca99df522ce1543ffa2bb3a486caeff957"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.14/garden-macos-aarch64.tar.gz"
      sha256 "313dd46c8cbb0023527eba6f5f24df1120184b48765e3cf25de749dc3abfe4c5"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.14/garden-macos-amd64.tar.gz"
      sha256 "1771ab44d252fb829762938befa207319e04d64c7c84d2bdcc86403723188255"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
