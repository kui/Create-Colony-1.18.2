# Create Colony 1.18.2

My Minecraft modpack.

* [Mod list](curseforge.md)


## Build zip

Execute it for the release build:

```
make
```

Then you can import the zip file into your CurseForge client.


## Development

1. Build the develop build:

```
make dev
```

2. Import the `-dev.zip` file into your CurseForge client
3. Restore some files

```
git restore .
```

4. You can develop and try to launch this modpack.


## Lint

```
make lint
```
