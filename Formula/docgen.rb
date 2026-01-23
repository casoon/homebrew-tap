# typed: false
# frozen_string_literal: true

# Homebrew formula for docgen CLI
class Docgen < Formula
  desc "CLI tool for generating professional business documents with Typst"
  homepage "https://github.com/casoon/typst-business-templates"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-apple-darwin.tar.gz"
      sha256 "79b5cf08f298e440631404a1d9340599a5b65e177b9132edec7c6494b1a17a1b"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-apple-darwin.tar.gz"
      sha256 "4ece19e791f0d852f707dbfe64df8759210a0bcddcbfcc58ce8dddbd2452adb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ef1c8c38fc9141a8bea5fd958eb5d51fbfa76524034c3d48b9d378963449e12"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff925b52f2bb84aa79ca133a349c62caa7ba2d5c752c08c5615ba5751a58f0a7"
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
