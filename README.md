# compathelper-action

The `compathelper-action` is a composite action that makes it easy and convenient to use [CompatHelper.jl](https://github.com/JuliaRegistries/CompatHelper.jl).

## Example Usage

Create a file in your repository at `.github/workflows/CompatHelper.yml` with the following contents:

```yaml
name: CompatHelper
on:
  schedule:
    - cron: 0 0 * * *
  workflow_dispatch:
jobs:
  CompatHelper:
    runs-on: ubuntu-latest
    steps:
      - uses: JuliaRegistries/compathelper-action@v1
        with:
          token: ${{ secrets.GITHUB_TOKEN }}
          ssh: ${{ secrets.DOCUMENTER_KEY }}
```
