# generate with
# `cheatset generate heroku-cheatsheet.rb`
# see https://github.com/Kapeli/cheatset for more info

cheatsheet do
  title 'Heroku'
  docset_file_name 'Heroku'
  keyword 'heroku'

  introduction 'Heroku commands ([original docs](https://devcenter.heroku.com/articles/dynos#cli-commands-for-dyno-management))'

  # this category is from https://devcenter.heroku.com/articles/dynos
  category do
    id 'CLI commands for dyno management'

    entry do
      command 'heroku ps'
      name 'List the dynos for an app'
      notes 'Also See [Scaling](https://devcenter.heroku.com/articles/scaling)'
    end

    entry do
      name 'List the dynos for an app'
      command 'heroku ps'
      notes 'Also See [Scaling](https://devcenter.heroku.com/articles/scaling)'
    end

    entry do
      name 'Start worker dynos'
      command 'heroku ps:scale worker=2'
      notes 'Look at your Procfile to see the worker process types that are defined for your app. Also See [Scaling](https://devcenter.heroku.com/articles/scaling)'
    end

    entry do
      name 'Stop a particular dyno type'
      command 'heroku ps:stop worker'
      notes 'Running ps:stop on dynos that are part of a scaled process will automatically be restarted. In Private Spaces, ps:stop will terminate and replace the dedicated instance running the dyno(s). To permanently stop dynos, scale down the process.. Also See [Scaling](https://devcenter.heroku.com/articles/scaling)'
    end

    entry do
      name 'Stop a particular dyno *'
      command 'heroku ps:stop worker.2'
      notes 'Also See [Scaling](https://devcenter.heroku.com/articles/scaling)'
    end

    entry do
      name 'Restart all dynos'
      command 'heroku ps:restart'
      notes 'Also See [Dyno Manager](https://devcenter.heroku.com/articles/dynos#restarting)'
    end

    entry do
      name 'Restart a particular dyno type'
      command 'heroku ps:restart web'
      notes 'Also See [Dyno Manager](https://devcenter.heroku.com/articles/dynos#restarting)'
    end

    entry do
      name 'Restart a particular dyno'
      command 'heroku ps:restart web.1'
      notes 'Also See [Dyno Manager](https://devcenter.heroku.com/articles/dynos#restarting)'
    end

    entry do
      name 'Scale horizontally (Add more dynos)'
      command 'heroku ps:scale web=2'
      notes 'Also See [Scaling](https://devcenter.heroku.com/articles/scaling)'
    end

    entry do
      name 'Scale horizontally by incrementing the current number of dynos'
      command 'heroku ps:scale web+5'
      notes 'Also See [Scaling](https://devcenter.heroku.com/articles/scaling)'
    end

    entry do
      name 'Scale different dyno types horizontally at the same time'
      command 'heroku ps:scale web=1 worker=5'
      notes 'Also See [Scaling](https://devcenter.heroku.com/articles/scaling)'
    end

    entry do
      name 'Scale vertically (Use bigger dynos)'
      command 'heroku ps:resize worker=standard-2x'
      notes 'Also See [Dyno Types](https://devcenter.heroku.com/articles/dyno-types)'
    end

    entry do
      name 'Scale horizontally and vertically at the same time'
      command 'heroku ps:scale web=3:performance-l'
      notes 'This example scales the number of web dynos to 3 and resizes them to performance-l. Also See [Dyno Types](https://devcenter.heroku.com/articles/dyno-types)'
    end

    entry do
      name 'Get help for the heroku ps command'
      command 'heroku ps --help'
    end

    entry do
      name 'Launch a one-off dyno that runs bash in a console'
      command 'heroku run bash'
      notes 'Also See [One-Off Dynos](https://devcenter.heroku.com/articles/one-off-dynos)'
    end

    entry do
      name 'Launch a one-off dyno that runs the “worker” process type that is present in your application’s Procfile'
      command 'heroku run worker'
      notes 'Also See [One-Off Dynos](https://devcenter.heroku.com/articles/one-off-dynos)'
    end

    entry do
      name 'View logs'
      command 'heroku logs'
      command 'heroku logs --tail'
      notes 'Also See [Logging](https://devcenter.heroku.com/articles/logging)'
    end
  end

  notes 'It is also possible to modify some of your app’s dyno settings with the [Heroku Dashboard](https://dashboard.heroku.com/apps).'
end
