# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gilt < Formula
  desc "A GIT layering tool"
  homepage "https://github.com/retr0h/gilt"
  version "2.2.0"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    url "https://github.com/retr0h/gilt/releases/download/v2.2.0/gilt_2.2.0_darwin_all"
    sha256 "181487e3acf90d720d8aa7a0bc994d347c475c81f6b88463aacac123119f9bf9"

    def install
      bin.install "gilt_2.2.0_darwin_all" => "gilt"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/retr0h/gilt/releases/download/v2.2.0/gilt_2.2.0_linux_arm64"
      sha256 "a9594f3ce1a58906074a2d11a34a142d72bc331de67c046b48c44c814e2ee87d"

      def install
        bin.install "gilt_2.2.0_linux_arm64" => "gilt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/retr0h/gilt/releases/download/v2.2.0/gilt_2.2.0_linux_amd64"
      sha256 "b40ba17cdd0c882a7b10ee344839122868bd657c13da86a38168b52e7c8e2341"

      def install
        bin.install "gilt_2.2.0_linux_amd64" => "gilt"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
