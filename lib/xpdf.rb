require "xpdf/version"

module Xpdf
  class << self
    def to_formatted_text(filename, target = nil)
      run_command(:pdftotext, "-layout -enc UTF-8 #{filename} #{target || '-'}", !!target)
    end

    def run_command(command, args, reroute_errors = true)
      command = [command, args]
      command << '2>&1' if reroute_errors
      command = command.join(' ')
      output = `#{command}`
      if $?.success?
        output
      else
        raise RuntimeError.new("Command failed: #{command}\n#{output}")
      end
    end

  end
end
