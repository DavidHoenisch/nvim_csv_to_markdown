# LVIM CSV to Markdown


This tool is used to convert a CSV file to a markdown table inside of an nvim buffer.  Once installed, 
you can use the `<Leader>mt` command. This will request a path to a csv file. The new markdown table will 
be inserted wherever you cursor is inside of the buffer.


## Installation

Customize as you see fit, but the following is how I have mine setup.

### Requirements


- python3
- pip3 
- Pandas 
- nvim
- a dir called ~/.dotfiles in your home directory


```bash
pip3 install pandas
```


```bash
mkdir ~/.dotfiles
```


### Setup 

Copy the (./csv_to_markdown_table.py) to the root of the .dotfiles directory

copy the contents of the (./config.lua) files to your nvim configuration



## TODO:

- [ ] Implement installation and setup via Packer, Lazy.

