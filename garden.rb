class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.7"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.7/garden-linux-aarch64-static.tar.gz"
      sha256 "c049bc0e3150305f42cf61ada2d7b9f394931b05bc13c840ce8db8d8555056c9"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.7/garden-linux-amd64-static.tar.gz"
      sha256 "c049bc0e3150305f42cf61ada2d7b9f394931b05bc13c840ce8db8d8555056c9"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.7/garden-macos-aarch64.tar.gz"
      sha256 "42628426adb884ff0480af62c220361c7df8781de91e7c212e0cb2d6ac84a611"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.7/garden-macos-amd64.tar.gz"
      sha256 "1f50945f195f40e010a92a3e5810aeb74bf0a7222f3b407a541ccfd236e27a5c"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
