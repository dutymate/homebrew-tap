class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.3.1/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "0c0e901a489046b52cb07672302f13d09c89492c67b410ccc86a04a81092632e"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.3.1/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "23bcad6e6ac83309bc10da017b4d9900865f3c12af26a8b43c3c6a6cfa4c2030"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.3.1/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "db4c74c5dc0299bc2283105735b65b05317e358699320814b7c92c7e897619f4"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.3.1/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "f2530f64a09200ab5f37afdd5b98c41bb36347bd8a4f9164c652cab65d6d7e25"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
