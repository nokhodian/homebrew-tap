class Monotask < Formula
  desc "P2P Kanban CLI – local-first task management with collaboration"
  homepage "https://github.com/nokhodian/monotask"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nokhodian/monotask/releases/download/v1.4.0/monotask-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e3e179f95446ada43577e95ad4bb624c0ce5b93ce53ca29ad546b04e7bcbd88"
    end
    on_intel do
      url "https://github.com/nokhodian/monotask/releases/download/v1.4.0/monotask-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "52a57d4004241038b7787e1ff9691d6c65337d37454fa705b0e135aea0efaa0c"
    end
  end

  on_linux do
    url "https://github.com/nokhodian/monotask/releases/download/v1.4.0/monotask-v1.4.0-x86_64-linux.tar.gz"
    sha256 "494cf30154c4605c6425d515a8050f18ba493f377d71bce0f94d62ebe0c89abd"
  end

  def install
    bin.install "monotaskcli"
  end

  test do
    assert_match "MONOTASK CLI", shell_output("#{bin}/monotaskcli ai-help")
  end
end
