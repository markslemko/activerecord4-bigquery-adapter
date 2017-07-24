# activerecord4-bigquery-adapter

based on activerecord4-redshift-adapter

BigQuery ActiveRecord 4 (Rails 4).
I copied Redshift driver from activerecord4-redshift-adapter gem. I needed some way use BigQuery now, so I
hacked this driver together with my limited knowledge.

This is not well tested. It suffices for what I need.

If you have patches, please fork and do a pull request.

## Usage

For Rails 4.2, write following in Gemfile:
```
gem 'google-api-client'
gem 'google-cloud-bigquery'
gem 'activerecord4-bigquery-adapter'
```

In database.yml
```
development:
  adapter: bigquery
  project: your_project_name
  keyfile: path/to/keyfile.json
  dataset: data_set_name
```
## License

MIT license (same as ActiveRecord)
