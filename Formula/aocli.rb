class aocli < Formula
  desc "A fast and pretty CLI program for interfacing with Advent of Code puzzles."
  homepage "https://github.com/DaltonSW/aocgo/tree/main/cmd/aocli"
  if OS.linux?
    url "https://github.com/DaltonSW/aocgo/releases/download/aocli-v0.9.8/aocli-linux-amd64"
    sha256 "C9A58CA773436320868797B6583D9085BC3FF2EDEF5709D2E8C01EDC4CE0B6F0"
  elsif OS.mac?
    url "https://github.com/DaltonSW/aocgo/releases/download/aocli-v0.9.8/aocli-darwin-amd64"
    sha256 "F0924962BF82970F6877D72B9CB3E925C30D77019FF115BD946EC6D610A2BB4E"
  end

  license "GPL-3.0-or-later"

  def install
    bin.install "aocli"
  end

  test do
    system "#{bin}/aocli", "version"
  end
end
