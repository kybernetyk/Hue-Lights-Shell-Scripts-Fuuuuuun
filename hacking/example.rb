class Debug < BetterCap::Proxy::HTTP::Module
    def on_request( request, response )
        puts "\n--- REQUEST ---\n\n"
        puts request.to_s.strip.split("\n").map { |x| "  #{x}"}.join("\n").green
        puts "\n\n--- RESPONSE ---\n\n"
        puts response.to_s.strip.split("\n").map { |x| "  #{x}"}.join("\n").yellow
    end
end