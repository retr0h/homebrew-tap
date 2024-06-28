# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gilt < Formula
  desc "A GIT layering tool"
  homepage "https://github.com/retr0h/gilt"
  version "2.2.2"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    url "https://github.com/retr0h/gilt/releases/download/v2.2.2/gilt_2.2.2_darwin_all"
    sha256 "69f98883668fd8f23b269d525b7cee599d946a9535da4b92fb8dbd99a25f4ed0"

    def install
      bin.install "gilt_2.2.2_darwin_all" => "gilt"
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/retr0h/gilt/releases/download/v2.2.2/gilt_2.2.2_linux_amd64"
        sha256 "d8aee5f043c8ae386c0e01e2ddeed5d8dabf2aa51a6883aff7c17fc0376054a8"

        def install
          bin.install "gilt_2.2.2_linux_amd64" => "gilt"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/retr0h/gilt/releases/download/v2.2.2/gilt_2.2.2_linux_arm64"
        sha256 "dc5e79ca199dec07d315887efe4b01ed700ab9ea0f9e6c417b5e7d4c0a52dccd"

        def install
          bin.install "gilt_2.2.2_linux_arm64" => "gilt"
        end
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
