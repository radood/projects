require '../parserLibrary'

describe ParserLibrary do
   describe '#convertLogFileToHashMap' do
      it 'returns an error when no parameter is passed' do
         pl = ParserLibrary.new
         expect {pl.convertLogFileToHashMap()}.to raise_error "wrong number of arguments (given 0, expected 1)"
      end
   end
      describe '#convertLogFileToHashMap' do
      it 'returns the correct hash when a valid file is passed' do
         pl = ParserLibrary.new
         File.write('testFile', '/help_page/1 126.318.035.038')
         testFile = File.read('testFile')
         expected = {}
         expected['/help_page/1'] = ['126.318.035.038']
         expect(pl.convertLogFileToHashMap(testFile)).to eq expected
      end
   end

   describe '#countNumberOfViews' do
      it 'returns an error when no parameter is passed' do
         pl = ParserLibrary.new
         expect {pl.countNumberOfViews()}.to raise_error "wrong number of arguments (given 0, expected 1)"
      end
   end
      describe '#countNumberOfViews' do
      it 'returns the correct number of views when a hash is passed' do
         pl = ParserLibrary.new
         givenHash = {}
         givenHash['/help_page/1'] = ['126.318.035.038', '126.318.035.038']
         expected = {}
         expected['/help_page/1'] = 2
         expect(pl.countNumberOfViews(givenHash)).to eq expected
      end
   end

   describe '#printNumberOfViewsInOrder' do
      it 'returns an error when no parameter is passed' do
         pl = ParserLibrary.new
         expect {pl.printNumberOfViewsInOrder()}.to raise_error "wrong number of arguments (given 0, expected 1)"
      end
   end
   describe '#printNumberOfViewsInOrder' do
      it 'prints the number of views in order' do
         pl = ParserLibrary.new
         givenHash = {}
         givenHash['/help_page/1'] = 1
         givenHash['/help_page/2'] = 2
         expected = "For the /help_page/2 page there are 2 views.\nFor the /help_page/1 page there are 1 views.\n"
         expect {pl.printNumberOfViewsInOrder(givenHash)}.to output(expected).to_stdout
      end
   end

   describe '#countNumberOfUniqueViews' do
      it 'returns an error when no parameter is passed' do
         pl = ParserLibrary.new
         expect {pl.countNumberOfUniqueViews()}.to raise_error "wrong number of arguments (given 0, expected 1)"
      end
   end
      describe '#countNumberOfUniqueViews' do
      it 'returns the correct number of unique views when a hash is passed' do
         pl = ParserLibrary.new
         givenHash = {}
         givenHash['/help_page/1'] = ['126.318.035.038', '126.318.035.038']
         expected = {}
         expected['/help_page/1'] = 1
         expect(pl.countNumberOfUniqueViews(givenHash)).to eq expected
      end
   end

   describe '#printNumberOfUniqueViewsInOrder' do
      it 'returns an error when no parameter is passed' do
         pl = ParserLibrary.new
         expect {pl.printNumberOfUniqueViewsInOrder()}.to raise_error "wrong number of arguments (given 0, expected 1)"
      end
   end
      describe '#printNumberOfUniqueViewsInOrder' do
      it 'returns an error when no parameter is passed' do
         pl = ParserLibrary.new
         pl = ParserLibrary.new
         givenHash = {}
         givenHash['/help_page/1'] = 1
         givenHash['/help_page/2'] = 2
         expected = "For the /help_page/2 page there are 2 unique views.\nFor the /help_page/1 page there are 1 unique views.\n"
         expect {pl.printNumberOfUniqueViewsInOrder(givenHash)}.to output(expected).to_stdout
      end
   end
end