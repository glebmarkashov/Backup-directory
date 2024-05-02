# Backup-директории
Мой bash-скрипт `run.sh` способен производить backup-директории `input_dir` в `output_dir`, со следующими условиями:
1. Не сохраняется древовидная иерархия директорий.
2. Копируются только файлы.
3. В случае одинаковых имен файлов, каждая повторка имеет вид `<название файла вместе с типом>.~<номер повторки>~`.


## Пример работы
```
$ git init
$ git clone https://github.com/glebmarkashov/Backup-directory.git
$ cd Backup-directory
$ chmod u+x run.sh
$ ./run.sh --input_dir <абсолютный путь к директории> --output_dir <название папки для бэкапа>
$ sudo apt-get install tree
$ tree <название папки для бэкапа>
```
