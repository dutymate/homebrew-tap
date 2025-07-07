class Mongo2dynamo < Formula
  desc "CLI tool to migrate data from MongoDB to DynamoDB"
  homepage "https://github.com/dutymate/mongo2dynamo"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel? # darwin_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.5.0/mongo2dynamo_Darwin_x86_64.tar.gz"
      sha256 "a2d4425553fe2df6cb7b104c4d25575ed6e06ec57b18b84515cf6c54dc56b53e"
    end
    if Hardware::CPU.arm? # darwin_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.5.0/mongo2dynamo_Darwin_arm64.tar.gz"
      sha256 "dfa5ef4008ef67f23e2a4daccbf2aa909f8cfd013099ebe0a43688c374e0fb70"
    end
  end

  on_linux do
    if Hardware::CPU.intel? # linux_amd64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.5.0/mongo2dynamo_Linux_x86_64.tar.gz"
      sha256 "6f1b1ed5fe38c8143c48dd8bea93da61046db0152f704299a389ce154124127b"
    end
    if Hardware::CPU.arm? # linux_arm64
      url "https://github.com/dutymate/mongo2dynamo/releases/download/v1.5.0/mongo2dynamo_Linux_arm64.tar.gz"
      sha256 "17729e6ccef918d016e3e8d6740ec4369397682ec9d81ac73b94d63f4d0d2362"
    end
  end

  def install
    bin.install "mongo2dynamo"
  end

  test do
    system "#{bin}/mongo2dynamo", "version"
  end
end
