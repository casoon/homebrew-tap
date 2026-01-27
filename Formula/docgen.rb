# typed: false
# frozen_string_literal: true

# Homebrew formula for docgen CLI
# This file should be copied to your homebrew-tap repository
class Docgen < Formula
  desc "CLI tool for generating professional business documents with Typst"
  homepage "https://github.com/casoon/typst-business-templates"
  version "0.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-apple-darwin.tar.gz"
      sha256 "5c21c12b99eaf0df17ca3a8fdff7e4cea4f25d97d2ec8a8f6e57de8b8c34de87"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-apple-darwin.tar.gz"
      sha256 "b82bd9fc4f30bdc39fb21ee3aba3b8b7d76a17ccf9fb01a3e009d22fd0bd3c33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4dd1b4a87be5b73c4a77d02f0d2ba4fde6e1e1e1e00cf62a6ed1c36b9a24a60d"
    end
    on_intel do
      url "https://github.com/casoon/typst-business-templates/releases/download/v#{version}/docgen-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b8e85ddce73f33edfe1c3b0c9c6dff6c9b74f42a52dae6ffcacd1c33aa04cf4"
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
