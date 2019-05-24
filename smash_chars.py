import csv
import os

DIR = os.path.dirname(os.path.realpath(__file__))

stages_filename = 'smash_bros_stages.csv'
char_filename = 'smash_bros_chars.csv'
item_filename = 'smash_bros_items.csv'


def clean(in_str):
    out_str = in_str.strip().replace("'", "\\'")
    n = out_str.find('[')
    if n != -1:
        out_str = out_str[:n]

    return out_str

# CHARACTERS
print('-- CHARACTERS')

fname = f'{DIR}/{char_filename}'
with open(fname) as infile:
    csvreader = csv.reader(infile)
    next(csvreader)
    for row in csvreader:
        id=int(row[0])
        char_name = clean(row[1])
        SQL_STRING = f"INSERT INTO characters(id, char_name) VALUES({id},'{char_name}'); "
        print(SQL_STRING)


# ITEMS
print('-- ITEMS')
fname = f'{DIR}/{item_filename}'

with open(fname) as infile:
    csvreader = csv.reader(infile)
    next(csvreader)
    for row in csvreader:
        id=int(row[0])
        item_name = clean(row[1])
        SQL_STRING = f"INSERT INTO items(id, item_name) VALUES({id},'{item_name}'); "
        print(SQL_STRING)


# STAGES
print('-- STAGES')

fname = f'{DIR}/{stages_filename}'

with open(fname) as infile:
    csvreader = csv.reader(infile)
    next(csvreader)
    for row in csvreader:
        id=int(row[0])
        stage_name = clean(row[1])
        SQL_STRING = f"INSERT INTO stages(id, stage_name) VALUES({id},'{stage_name}'); "
        print(SQL_STRING)
