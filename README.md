# b64

b64 is a simple utility for Base64 encoding/decoding on the command line.

Basically, sometimes I need to Base64 encode a string, and I don't want to have to fire up IRB and do it with code. So, this does that for you.

## Requirements/Installation

```
rake gem:build
rake gem:install
```

## Running the tests:

```rake spec```

## Building the gem:

```rake gem:build```

## Install gem with Rake:

```rake gem:install```

## Usage

You can either encode or decode, and you can do it to as many strings at once as you like.

### Encode

```
b64 e <input>
b64 enc <input>
b64 encode <input>
```

or

```
b64 d <input>
b64 dec <input>
b64 decode <input>
```

##License

See the LICENSE file. Licensed under the Apache 2.0 License
