Rails.application.config.middleware.use OmniAuth::Builder do
  # Make sure that you have set your KEY and SECRET in your shell startup scipt
  # This will be a file like `.zshrc` if you use ZSH, or `.bashrc` if you use
  # Bash. Other possible files include `.profile`.
  # You'll need lines in the file that look like this:
  #

  Dotenv.load
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end
