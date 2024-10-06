# Place this in your Fish functions folder to make it available immediately
# e.g. ~/.config/fish/functions/envsource.fish
#
# Usage: envsource <path/to/env>

function envsource
  for line in (cat $argv | grep -v '^#')
    set item (string split -m 1 '=' $line)
    set -gx $item[1] (printf $item[2] | tr -d \" | envsubst)
    #echo "Exported key $item[1]"
  end
end
