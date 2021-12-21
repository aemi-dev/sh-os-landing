$HOME/.cargo/bin/starship init /usr/local/bin/fish | source

set -gx CARGO_BIN $HOME/.cargo/bin
set -gx LOCAL_BIN /usr/local/bin
set -gx LOCAL_OPT /usr/local/opt
set -gx LOCAL_LIB /usr/local/lib

fish_add_path "/usr/local/bin/"
fish_add_path "/usr/local/sbin/"
fish_add_path "/usr/bin/"
fish_add_path "/usr/sbin/"
fish_add_path "/bin/"
fish_add_path "/sbin/"

fish_add_path $CARGO_BIN

fish_add_path $HOME/Code/phpcs/bin
fish_add_path $HOME/.composer/vendor/bin

fish_add_path $LOCAL_OPT/curl/bin
fish_add_path $LOCAL_OPT/ruby/bin

fish_add_path $LOCAL_OPT/php/bin
fish_add_path $LOCAL_OPT/php/sbin
fish_add_path $LOCAL_OPT/python@3.10/bin
fish_add_path $LOCAL_OPT/python@3.9/bin
fish_add_path $LOCAL_OPT/python@3.8/bin
fish_add_path $LOCAL_OPT/python@3.7/bin

# fish_add_path $LOCAL_OPT/openssl@3/bin
# fish_add_path $LOCAL_OPT/swift/bin

fish_add_path $LOCAL_LIB/ruby/gems/3.0.0/bin

# Symlink Swift
# ln -s $LOCAL_OPT/swift/Swift-5.5.xctoolchain ~/Library/Developer/Toolchains/Swift-5.5.xctoolchain

$LOCAL_BIN/fig &> /dev/null