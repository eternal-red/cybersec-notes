


to apply command to every file in a directory

```bash
$ cmd [option] [filename] > results.out
```

```bash
for file in /dir/*
do
  cmd [option] "$file" >> results.out
done
```

