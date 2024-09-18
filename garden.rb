class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.13"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.13/garden-linux-aarch64-static.tar.gz"
      sha256 "836380332ef656d940f1a2605c8c05b2d0109c20261ad8138c03e3ec6846aa05"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.13/garden-linux-amd64-static.tar.gz"
      sha256 "836380332ef656d940f1a2605c8c05b2d0109c20261ad8138c03e3ec6846aa05"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.13/garden-macos-aarch64.tar.gz"
      sha256 "4f95b93fa1f9047cd344beea89360c1df5af5ba9a477ded25844b27113a85a3a"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.13/garden-macos-amd64.tar.gz"
      sha256 "4081f86ad993f5a331920044a0b19d3c6cf0502e031b316896ddffa12ced3e17"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
