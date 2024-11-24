function fish_greeting
    set user_name (whoami)
    set hour (date +"%H")

    if test $hour -lt 12
        set time_based_greeting "Good Morning, $user_name!"
    else if test $hour -lt 18
        set time_based_greeting "Good Afternoon, $user_name!"
    else if test $hour -lt 22
        set time_based_greeting "Good Evening, $user_name!"
    else
        set time_based_greeting (random choice "$user_name, it's quite late. Time to get some rest!" "$user_name, you should be sleeping!" "$user_name, don't forget to take care of yourself!")
    end

    # Use time_based_greeting if it's not past 10 PM
    if test $hour -lt 22
        set random_greeting (random choice "Welcome Back, $time_based_greeting" "Hey $time_based_greeting" "Hi $time_based_greeting, let's make today awesome!" "Hello $time_based_greeting, how's it going?")
    else
        set random_greeting $time_based_greeting
    end

    # Highlight username in blue
    set highlighted_greeting (string replace "$user_name" (set_color blue)"$user_name"(set_color normal) "$random_greeting")
    echo $highlighted_greeting
end

starship init fish | source
enable_transience
neofetch

