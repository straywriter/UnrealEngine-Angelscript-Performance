## Unreal Angelscript performance

The main code comes from [crazytuzi/ScriptPluginCompare (github.com)](https://github.com/crazytuzi/ScriptPluginCompare).

The cloning process failed due to lfs traffic restriction, and only unlua was compared

[中文](README-zh.md)

## Result

- Editor Development
- PIE
- Some blueprints have no data that is not supported by the corresponding type

![chart-1731087186775](READMD/chart-1731087186775.png)

![chart-1731086556375](READMD/chart-1731086556375-1731087277301-3.png)







## Begin Test

```
Open /Game/FirstPerson/Maps/TestMap.TestMap
```

Click button:
![image-20241109013746143](READMD/image-20241109013746143.png)

Result output: `[ProjectPath]/Saved/xxx.csv`

## Build

- Plase use VisualStudio2022
- UE5.4

### Other

- [CSV to Chart Online - WebUtility.io](https://webutility.io/csv-to-chart-online)