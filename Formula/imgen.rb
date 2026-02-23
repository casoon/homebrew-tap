# typed: false
# frozen_string_literal: true

class Imgen < Formula
  desc "CLI tool to generate images via the Replicate API"
  homepage "https://github.com/casoon/imgen"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "imgen"
  end

  test do
    system "#{bin}/imgen", "--version"
  end
end
