
require './parserLibrary'

class Parser

	def runProgram
		lib = ParserLibrary.new;

		hashmap = lib.convertLogFileToHashMap(grabLogs)

		lib.printNumberOfViewsInOrder(lib.countNumberOfViews(hashmap))

		lib.printNumberOfUniqueViewsInOrder(lib.countNumberOfUniqueViews(hashmap))
	end

	def grabLogs
		file = ""
		ARGV.each do|a| 
			file = File.read(a)
		end
		return file
	end

	private:grabLogs
end


p = Parser.new
p.runProgram







