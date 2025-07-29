# llama-swap's Homebrew tap

## Setup

`brew install mostlygeek/llama-swap/llama-swap`

Or 

`brew tap mostlygeek/llama-swap`

`brew install llama-swap`

Or

In a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "mostlygeek/llama-swap"
cask "llama-swap"
```

## Running llama-swap
1. Create a configuration file, see the [configuration documentation](https://github.com/mostlygeek/llama-swap/wiki/Configuration).
1. Run the binary with `llama-swap --config path/to/config.yaml --listen localhost:8080`.
   Available flags:
   - `--config`: Path to the configuration file (default: `config.yaml`).
   - `--listen`: Address and port to listen on (default: `:8080`).
   - `--version`: Show version information and exit.
   - `--watch-config`: Automatically reload the configuration file when it changes. This will wait for in-flight requests to complete then stop all running models (default: `false`).

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

[llama-swap](https://github.com/mostlygeek/llama-swap?tab=readme-ov-file) for more information on using `llama-swap`