class Aocli < Formula
  desc "A fast and pretty CLI program for interfacing with Advent of Code puzzles."
  homepage "https://github.com/DaltonSW/aocgo/tree/main/cmd/aocli"
  if OS.linux?
    url "https://github.com/DaltonSW/aocgo/releases/download/aocli-v0.11.0/aocli-linux-amd64"
    sha256 "56eb5d6f9c74b2091f4cd1c66aac795ee0656e77a5a182ba3dd643669d50117d"
  elsif OS.mac?
    url "https://github.com/DaltonSW/aocgo/releases/download/aocli-v0.11.0/aocli-darwin-amd64"
    sha256 "56eb5d6f9c74b2091f4cd1c66aac795ee0656e77a5a182ba3dd643669d50117d"
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
