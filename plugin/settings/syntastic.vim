" use Rubocop syntax checker for Ruby
if executable('rubocop')
  let g:syntastic_ruby_checkers = ['rubocop']
endif

" disalbe foodcritic
let g:loaded_syntastic_chef_foodcritic_checker = 0
