# [Homebrew](http://brew.sh) tap for Simple 2D

Install this tap using:

```
brew tap simple2d/tap
brew install simple2d
```

Or, install the latest development release using:

```bash
brew install --HEAD simple2d
```

## Updating the formula

When a new Simple 2D release is out, do the following:
- Update the version number in [`simple2d.rb`](simple2d.rb)
- Calculate the new sha256 checksums for the source code release archive and Apple assets, for example using `shasum -a 256 <file>`
- Run `brew audit --strict ./simple2d.rb` to detect any issues with the formula
- Test installation of the formula using `brew install ./simple2d.rb`
- Commit and push changes
