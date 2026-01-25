# typed: false
# frozen_string_literal: true

# Homebrew formula for docgen CLI
# This file should be copied to your homebrew-tap repository
class Docgen < Formula
  desc "CLI tool for generating professional business documents with Typst"
  homepage "https://github.com/casoon/typst-business-templates"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-apple-darwin.tar.gz"
      sha256 "7720466d603e9aecfa477d8c6f5b479816aa1a34dcf74e703ed964f839335c5f"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-apple-darwin.tar.gz"
      sha256 "249c46166e62273d6749f672714d247f7daadc55f4e3c324de238f798fdd5107"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97f2842c28ac9af27e14a45ece2ee9c61e6492e7969a35e162036b8144474638"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06258a9234abe8493adace0fd25c6febcf8fd158456d3271b78871a8cdd2b012"
    end
  end

  depends_on "typst"

  def install
    bin.install "docgen"
  end

  test do
    system "#{bin}/docgen", "--version"
  end
end
