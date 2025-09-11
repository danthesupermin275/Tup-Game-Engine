extends Node
# Define categories
var keywords = ["if", "else", "while", "for", "func", "return", "var", "print"]
var operators = ["+", "-", "*", "/", "=", "==", "!=", "<", ">", "<=", ">="]
var brackets = ["(", ")", "{", "}", "[", "]"]
var punctuation = [",", ";", ":", "."]

var current_line : int

func compile(text: String) -> String:
	var lines = text.split("\n", false) 
	var tokenized_lines = []
	
	# Regex matches: words, numbers, punctuation, strings
	var regex = RegEx.new()
	regex.compile(r"\".*?\"|\w+|[^\w\s]")
	
	for line in lines:
		current_line += 1
		var matches = regex.search_all(line)
		var tokens = []
		tokens.append(current_line)
		for m in matches:
			var value = m.get_string()
			var token = {"value": value, "type": "identifier"}  # default

			# categorize
			if value in keywords:
				token.type = "keyword"
			elif value.is_valid_int():
				token.type = "number"
			elif value.is_valid_float():
				token.type = "number"
			elif value in operators:
				token.type = "operator"
			elif value in brackets:
				token.type = "bracket"
			elif value in punctuation:
				token.type = "punctuation"
			elif value.begins_with("\"") and value.ends_with("\""):
				token.type = "string"
			else:
				token.type = "identifier"

			tokens.append(token)
		tokenized_lines.append(tokens)

	var data = {
		"lines": tokenized_lines
	}
	
	return JSON.stringify(data, "\t")
