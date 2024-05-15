class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.11"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.11/garden-linux-aarch64-static.tar.gz"
      sha256 "4e2262fff0bcec94b2dcbea3a9e131be9ab498288f24715d80dff34c8f75a0cf"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.11/garden-linux-amd64-static.tar.gz"
      sha256 "4e2262fff0bcec94b2dcbea3a9e131be9ab498288f24715d80dff34c8f75a0cf"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.11/garden-macos-aarch64.tar.gz"
      sha256 "0c47ed62633f618d1a21af8e12dfb9901e003cab64634748eea6e9795dbd01bc"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.11/garden-macos-amd64.tar.gz"
      sha256 "796b61f85fd857663a462f2c6022c7582995738615faf52afdea4bc0a7b8f205"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
