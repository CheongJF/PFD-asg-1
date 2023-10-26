!/bin/bash
# Install LanguageToolsudo apt-get install languagetool
# Run LanguageTool and output results to a file
languagetool -l en-US /path/to/your/code > grammar_results.txt
# Check if there are any grammar errorsif [ -s grammar_results.txt ]; then
  echo "Grammar errors found:"  cat grammar_results.txt
  exit 1else
  echo "No grammar errors found."  exit 0
fi
