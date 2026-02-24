# typed: false
# frozen_string_literal: true

class Imgen < Formula
  desc "CLI tool to generate images via the Replicate API"
  homepage "https://github.com/casoon/imgen"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-apple-darwin.tar.gz"
      sha256 "600f954ef977302a58e8363edd189b29aeb6624d550f9b2e702331f84403720b"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-apple-darwin.tar.gz"
      sha256 "542627a00d05f7c382eb360e1e43e674fc234b3abc1d35411961a7300cd9c211"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "54a4f86197716d26eea36ee49a3bfce174e5cf776957e5cc91e5810ab33392b7"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e98c0768c290d2ac0a21c8d7ebd9a30042281b819b83bb983342be7402da690"
    end
  end

  def install
    bin.install "imgen"
  end

  test do
    system "#{bin}/imgen", "--version"
  end
end
