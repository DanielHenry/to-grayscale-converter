require_relative 'converter.rb';

if ARGV[0].nil?
    print "Source images folder's path: ";
    source_dir = readline;
    print "Result images folder's path: ";
    result_dir = readline;
    begin
        converter = Converter.new source_dir result_dir;
        converter.run;
        puts "[INFO] Convert images have already done";
    rescue => e
        puts "[ERROR] Error during processing: #{$!}";
		puts "[DEBUG] Backtrace:\n\t#{e.backtrace.join("\n\t")}";
    end
elsif ARGV.length >= 2
    source_dir = ARGV[0];
    result_dir = ARGV[1];
    begin
        converter = Converter.new source_dir result_dir;
        converter.run;
        puts "[INFO] Convert images have already done";
    rescue => e
        puts "[ERROR] Error during processing: #{$!}";
		puts "[DEBUG] Backtrace:\n\t#{e.backtrace.join("\n\t")}";
    end
else
    puts "[WARN] You only pass one argument, expected 2 arguments!";
end