$HOME/.cargo/bin/starship init /usr/local/bin/fish | source

fish_add_path "/usr/local/bin/"
fish_add_path "/usr/local/sbin/"
fish_add_path "/usr/bin/"
fish_add_path "/usr/sbin/"
fish_add_path "/bin/"
fish_add_path "/sbin/"

set -gx CARGO_BIN "/Users/gc/.cargo/bin"
set -gx MAVEN_OPTS "-Xmx1024m"

fish_add_path $CARGO_BIN
fish_add_path "/usr/local/opt/ruby/bin"
fish_add_path "/usr/local/lib/ruby/gems/3.0.0/bin"
fish_add_path "/Users/gc/Code/phpcs/bin"
fish_add_path "/usr/local/opt/php/bin"
fish_add_path "/usr/local/opt/php/sbin"
fish_add_path "/usr/local/opt/python@3.10/bin"
fish_add_path "/usr/local/opt/python@3.9/bin"
fish_add_path "/usr/local/opt/python@3.8/bin"
fish_add_path "/usr/local/opt/python@3.7/bin"

/usr/local/bin/fig &> /dev/null
