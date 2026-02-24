# typed: false
# frozen_string_literal: true

class Imgen < Formula
  desc "CLI tool to generate images via the Replicate API"
  homepage "https://github.com/casoon/imgen"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-apple-darwin.tar.gz"
      sha256 "fd905b6a7403b470def70f222eb7045b01d17cc5e114bd4ceeb4a0dcf2effbf3"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-apple-darwin.tar.gz"
      sha256 "065e4c735654a8a77a6a425c1fdabacabf045c9e277e172a00db97234aab4388"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8feb342607f553ee7a53400e6c5f122848dcc0e1f0522db70da610ffe4779c48"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0682248a9996bef441d6b4be91ec14a46719f3462850bdf7d5af08456d96af56"
    end
  end

  def install
    bin.install "imgen"
  end

  test do
    system "#{bin}/imgen", "--version"
  end
end
