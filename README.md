# Rails Revision

It’s always nice to know which version of your code is deployed. Each of our Rails apps include the REVISION file that capistrano creates during a deploy. If you don’t use capistrano, you can always shell out to git.

# How to use

- Copy settings_sample.rb to settings.rb
- Edit and configure settings.rb for your application servers
- Run ruby rails_revision.rb
- Open [http://localhost:4567/](http://localhost:4567/)
