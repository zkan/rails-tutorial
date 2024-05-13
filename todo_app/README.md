# To-do App

Play with Rails migration..

## Commands

Adding users

```bash
./bin/rails generate migration AddUserToTodos user:string
```

Rails will generate a migration for us.

When you passed AddUserToTodos user:string to Rails, it recognized the
migration name, AddUserToToDos, as a request to add a column. If you name your
migration name "AddXXXToYYY" or "RemoveXXXFromYYY" and pass a list of column
names and types, Rails will figure out what you're trying to do.

To migrate:

```bash
./bin/rails db:migrate
```

To rollback:

```bash
./bin/rails db:rollback
```
