notification :terminal_notifier

# notification :tmux,
#   :display_message => true,
#   :timeout => 5, # in seconds
#   :default_message_format => '%s >> %s',
#   # the first %s will show the title, the second the message
#   # Alternately you can also configure *success_message_format*,
#   # *pending_message_format*, *failed_message_format*
#   :line_separator => ' > ', # since we are single line we need a separator
#   :color_location => 'status-left-bg' # to customize which tmux element will change color

# notification :file, path: '.guard_result'
# guard :shell do
#   watch '.guard_result' do
#     status = File.read('.guard_result').lines.first.strip if File.exists?('.guard_result')
#     if status == 'failed'
#       color = 'ff0000'
#     elsif status == 'success'
#       color = '00ff00'
#     else
#       color = '000000'
#     end
#     `blink1-tool -q --rgb #{color} --blink 1` rescue nil
#   end
# end
