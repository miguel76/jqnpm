# typed: false
# frozen_string_literal: true

class Jqnpm < Formula
    desc "Package manager built for the command-line JSON processor jq"
    homepage "https://github.com/miguel76/jqnpm"
    url "https://github.com/miguel76/jqnpm.git", tag: "v0.0.2"
    license any_of: ["MIT", "BSD-2-Clause", "GPL-3.0-or-later"]
  
    head do
      url "https://github.com/miguel76/jqnpm.git",
          branch: "main"
      version "v0.0.2"
    end
  
    depends_on "bash"
    depends_on "jq"
    depends_on "shunit2"
  
    def install
      prefix.install "src"
      bin.install_symlink prefix/"src/jqnpm"
    end
  
    test do
      assert_match(/install/, shell_output("#{bin}/jqnpm help"))
    end
  end