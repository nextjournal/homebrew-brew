class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.1.4"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.4/garden-linux-aarch64-static.tar.gz"
      sha256 "eced81aafac6b508ef8b37e507517ee3c261a4d0378262f80849caa3d89e34c7"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.4/garden-linux-amd64-static.tar.gz"
      sha256 "eced81aafac6b508ef8b37e507517ee3c261a4d0378262f80849caa3d89e34c7"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.4/garden-macos-aarch64.tar.gz"
      sha256 "e47d47a1959e4e624a2c035971a6d2a4b608c04ce0d092ad35650427e1c1dcdc"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.1.4/garden-macos-amd64.tar.gz"
      sha256 "865840fd1e5496362a6596992e407b842bb139a4f911c579e1db9aba364d3d28"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
