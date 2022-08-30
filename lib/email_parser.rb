# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_reader :emails

    def initialize emails
        @emails = emails
    end

    def parse
        split_array = @emails.include?(',')?@emails.split(','):@emails.split(' ')
        unique_array = []
        split_array.map{|email|unique_array.include?(email)?nil:unique_array.push(email)}
        unique_array
    end
end