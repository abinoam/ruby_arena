require 'optparse'

class OptionParser
  def self.parse(args)
    options = {}

    opt_parser = OptionParser.new do |opts|
      opts.banner = %{Usage: ruby_arena.rb -l <level> [ai_file]
Usage: ruby_arena.rb <ai_file1> [ai_file2] ... [ai_fileN]
      }

      opts.on("-l", "--level level_number", Integer, "Specify level") do |l|
        options[:level] = l
      end

      if args.empty?
        puts opts
        exit
      end

      opts.on_tail("-h", "--help", "Show this message") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(args)

    options
  end
end
