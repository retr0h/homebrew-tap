# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gilt < Formula
  desc "A GIT layering tool"
  homepage "https://github.com/retr0h/gilt"
  version "2.1.2"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    url "https://github.com/retr0h/gilt/releases/download/v2.1.2/gilt_2.1.2_darwin_all"
    sha256 "a993b5bf4bfd0ca27e39a2b4c4bb269672df7b4b83fb6dd0b82d7cc3119c2d0d"

    def install
      bin.install "gilt_2.1.2_darwin_all" => "gilt"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/retr0h/gilt/releases/download/v2.1.2/gilt_2.1.2_linux_arm64"
      sha256 "78f24b18a268cea1cd6495b906c1da9e2658ef495707cdff21dc12736f3de29a"

      def install
        bin.install "gilt_2.1.2_linux_arm64" => "gilt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/retr0h/gilt/releases/download/v2.1.2/gilt_2.1.2_linux_amd64"
      sha256 "bbe1b809ba4874153fc5b22fe5a964ea069e6b8d6597ad58420e89eb49e3c444"

      def install
        bin.install "gilt_2.1.2_linux_amd64" => "gilt"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end