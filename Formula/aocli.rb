class aocli < Formula
  desc "A fast and pretty CLI program for interfacing with Advent of Code puzzles."
  homepage "https://github.com/DaltonSW/aocgo/tree/main/cmd/aocli"
  url "https://github.com/DaltonSW/aocgo/releases/download/aocli-v0.9.8/aocli-linux-amd64"
  sha256 "C9A58CA773436320868797B6583D9085BC3FF2EDEF5709D2E8C01EDC4CE0B6F0"
  license "GPL-3.0-or-later"

  def install
    bin.install "aocli-linux-amd64" => "aocli"
  end

  test do
    system "#{bin}/aocli", "version"
  end
end
