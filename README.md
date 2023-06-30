# Getting Started with MongoDB Atlas and Ruby on Rails Example

This repository contains the sample application for showing how to get started using MongoDB Atlas and Ruby on Rails.

## How To Run

1. You can follow the [Getting Started with Atlas](https://docs.atlas.mongodb.com/getting-started/) guide, to learn how to create a free Atlas account, create your first cluster and get your Connection String to the database.
Then, set the URI value in `config/mongoid.yml` to your Connection String:
```
ATLAS_URI=mongodb+srv://<username>:<password>@sandbox.jadwj.mongodb.net/myFirstDatabase?retryWrites=true&w=majority
```

2. Start the Application
 From your command-line of choice, run:
```
rails server
```

## Disclaimer

Use at your own risk; not a supported MongoDB product