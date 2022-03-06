with open("raw.json", "r") as indoc:
    with open("clean.json", "w+") as outdoc:
        outdoc.write(indoc.read().replace('"{', "{").replace('}"', "}").replace(', "', ',\n"').replace('\\"', '"'))
