## Set up environment:

- Clone the project to your computer:

```
$ git clone git@github.com:garylai1990/nckucourse.git
```

- Install git flow:

[Git Flow Tutorial](http://nvie.com/posts/a-successful-git-branching-model/)

Mac OS X:

```
$ brew install git-flow
```

Linux:

[Link](https://github.com/nvie/gitflow/wiki/Linux)

Windows:

[Link](https://github.com/nvie/gitflow/wiki/Windows)

- Set git flow:

[Git Flow](http://nvie.com/posts/a-successful-git-branching-model/)

```
$ git flow init
```
- Run bundle

```
$ bundle install
```

- Database.yml

You will need

```
application.yml
```

- Create database.yml

Example:

```
development:
  adapter: postgresql
  encoding: unicode
  database: nckucourse_development
  pool: 5
  username: gary
  password:
 ```

- Create database

```
$ rake db:create
```

- Migrate database:

```
$ rake db:migrate
```

## Browser

- Set Powder Server: (This is only for Mac)

```
$ powder link
```

- Open Browser and go to this link:

[http://nckucourse.dev/](http://nckucourse.dev/)

- Linux:

```
$ rails s
```
- Open Browser and go to http://localhost:3000/