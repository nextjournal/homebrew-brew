class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.15"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.15/garden-linux-aarch64-static.tar.gz"
      sha256 "10e3f9246198b9e1a03507b6a03af87e4b080339d66116ad8e6c91d3118c3700"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.15/garden-linux-amd64-static.tar.gz"
      sha256 "10e3f9246198b9e1a03507b6a03af87e4b080339d66116ad8e6c91d3118c3700"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.15/garden-macos-aarch64.tar.gz"
      sha256 "21528be910808007eb71ac0a4ede29c0bfe62d591752224b965cf8e6f131b335"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.15/garden-macos-amd64.tar.gz"
      sha256 "f4972b9bbeb773a2cca6050a76d749d5a91c53f0538f29ad96977fb1ead8e3df"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
