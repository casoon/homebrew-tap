# typed: false
# frozen_string_literal: true

class Imgen < Formula
  desc "CLI tool to generate images via the Replicate API"
  homepage "https://github.com/casoon/imgen"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-apple-darwin.tar.gz"
      sha256 "83792a428c10d15e06ae31d65690d573fe43c7e498f50b381e5a647e96b2fb05"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-apple-darwin.tar.gz"
      sha256 "f91c279700415bcff70ba188f5d64ebc24d30dda7fd3025d5c08e2db27008fcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e97739471cd16af91b54983e08964fc95969eefdd6e68584edb29aed960e3f45"
    end
    on_intel do
      url "https://github.com/casoon/imgen/releases/download/v#{version}/imgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b42d53504fe3229c3c904e67a41203dfeabe647e922028b19c5ba086364f66c7"
    end
  end

  def install
    bin.install "imgen"
  end

  test do
    system "#{bin}/imgen", "--version"
  end
end
