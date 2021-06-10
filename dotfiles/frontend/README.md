# KCD Frontend dotfiles

## Run

```shellscript
git clone git@github.com:koreacreditdata/guides.git

cd dotfiles/frontend;

# need root access to run scripts without errors
sudo -s;

./main.sh;

exit;
```

### .vscode

`feather` 와 같은 모노레포와 같은 구조에선 아래와 같이 config path 를 직접 지정해주어야 합니다.

`settings.json`
```json
{
  "eslint.nodePath": "./node_modules",
  "eslint.workingDirectories": [ "./packages/feather" ],
  "stylelint.configFile": "./packages/feather/.stylelintrc.json"
}
```
