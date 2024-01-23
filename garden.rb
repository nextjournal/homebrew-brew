class Garden < Formula
  desc "CLI for application.garden"
  homepage "application.garden"
  version "0.0.7"

  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.7/garden-linux-aarch64-static.tar.gz"
      sha256 "d4ee8e41760330749a1f7f54dae9a10bb383ef1a4380e88ae4e3ef1d627a4489"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.7/garden-linux-amd64-static.tar.gz"
      sha256 "d4ee8e41760330749a1f7f54dae9a10bb383ef1a4380e88ae4e3ef1d627a4489"
    end
  else
    if Hardware::CPU.arm?
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.7/garden-macos-aarch64.tar.gz"
      sha256 "81fe10fa7f426314d728cd473dd18aa0e532d8234402aba706a217fd02bb91eb"
    else
      url "https://github.com/nextjournal/garden-cli/releases/download/v0.0.7/garden-macos-amd64.tar.gz"
      sha256 "2d20015e8352e69018d77b21d5c2779fbb351bb68dec598ea4ed194a2321293c"
    end
  end

  def install
    bin.install "garden"
  end

  test do
    system "#{bin}/garden", "version"
  end
end
