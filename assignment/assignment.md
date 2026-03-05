# Assignment

## Brief

Write the commands for the following questions.

### Question 1

Question: Insert the command in the following steps to extract data from a PostgreSQL database and load it into a BigQuery dataset using Meltano.

Answer:

```bash
# Step 1: Add the tap-postgres extractor
meltano add tap-postgres

# Step 2: Configure the extractor with the PostgreSQL connection details (interactive option)
meltano config set tap-postgres --interactive

# Step 3: Add the target-bigquery loader
meltano add target-bigquery

# Step 4: Configure the BigQuery loader with the project, dataset, and service account details
meltano config set target-bigquery --interactive

# Step 5: Run the pipeline
meltano run tap-postgres target-bigquery

```
### Extra
#### Tested and pouplate Supabase with data/CHAS Clinics.csv
 - meltano init meltano-chas-clinic
 - cd meltano-chas-clinic/
 - meltano add tap-postgres
 - meltano config set tap-postgres --interactive
 - meltano config test tap-postgres
 - meltano select tap-postgres "public-chas_clinics"
 - meltano select tap-postgres --list
 - meltano run tap-postgres target-bigquery

## Submission

- Submit the URL of the GitHub Repository that contains your work to NTU black board.
- Should you reference the work of your classmate(s) or online resources, give them credit by adding either the name of your classmate or URL.
