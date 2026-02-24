# typed: false
# frozen_string_literal: true

class Imgen < Formula
  desc "CLI tool to generate images via the Replicate API"
  homepage "https://github.com/casoon/imgen"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-apple-darwin.tar.gz"
      sha256 "d2513455d1bb54cf1c285c3fff8f88e1e5b2d410071dc2b160be3d40ad53bffc"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-apple-darwin.tar.gz"
      sha256 "086316a83cfd11348e8d50cde25926c572a2523bee3b5f1ac67c85d301797530"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4037ddbae9d15685b3a6adb0b3db2152ad630151d10390ba787eca2f72ebb885"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "257b35de363d6a749ab9467aa08ef9eac0bbc6bc48af01aaa7ab8a769bc304b5"
    end
  end

  def install
    bin.install "imgen"
  end

  test do
    system "#{bin}/imgen", "--version"
  end
end
