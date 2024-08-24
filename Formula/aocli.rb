class Aocli < Formula
  desc "A fast and pretty CLI program for interfacing with Advent of Code puzzles."
  homepage "https://github.com/DaltonSW/aocgo/tree/main/cmd/aocli"
  if OS.linux?
    url "https://github.com/DaltonSW/aocgo/releases/download/aocli-v0.9.9/aocli-linux-amd64"
    sha256 "0B08C377208681285A357660DF53FD5F233F54EB72BCC0BEB283082F874D7753"
  elsif OS.mac?
    url "https://github.com/DaltonSW/aocgo/releases/download/aocli-v0.9.9/aocli-darwin-amd64"
    sha256 "83B5268C80EB2ED2A2F8AE0DD3BFD005B6A7CAC472DCE18CCFB02E3D91FA8BEF"
  end

  license "GPL-3.0-or-later"

  def install
    if OS.linux?
      bin.install "aocli-linux-amd64" => "aocli"
    elsif OS.mac?
      bin.install "aocli-darwin-amd64" => "aocli"
    end
  end

  test do
    system "#{bin}/aocli", "version"
  end
end
