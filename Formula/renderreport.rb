# typed: false
# frozen_string_literal: true

class Renderreport < Formula
  desc "Data-driven report generation with Typst as embedded render engine"
  homepage "https://github.com/casoon/renderreport"
  version "0.1.0-alpha.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/casoon/renderreport/releases/download/v#{version}/renderreport-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/casoon/renderreport/releases/download/v#{version}/renderreport-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/casoon/renderreport/releases/download/v#{version}/renderreport-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/casoon/renderreport/releases/download/v#{version}/renderreport-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "renderreport"
  end

  test do
    system "#{bin}/renderreport", "--version"
  end
end
