# GitHub Actions for Okteto Cloud

## Automate your development workflows using Github Actions and Okteto Cloud
GitHub Actions gives you the flexibility to build an automated software development workflows. With GitHub Actions for Okteto Cloud you can create workflows to build, deploy and update your applications in [Okteto Cloud](https://cloud.okteto.com).

Get started today with a [free Okteto Cloud account](https://cloud.okteto.com)!

## Github Action for Deploying a Okteto Manifest in Okteto Cloud

You can use this action to create or update resources in your Okteto Cloud namespace. This is equivalent to running `okteto deploy -f $file`.

## Inputs

### `namespace`

The Okteto namespace to use. If not specified it will use the namespace specified by the `namespace` action.

### `build` 

Set to `true` to build the images before deploying your okteto manifest.

### `file` 

Path to the Okteto manifest. Can be a file or a directory. It defaults to `okteto.yml`.


## Example usage

This example runs the context action and then deploy your okteto manifest. 

```yaml
# File: .github/workflows/workflow.yml
on: [push]

name: example

jobs:

  devflow:
    runs-on: ubuntu-latest
    steps:
    - uses: okteto/context@latest
      with:
        token: ${{ secrets.OKTETO_TOKEN }}
    - uses: okteto/namespace@latest
    - name: "Deploy okteto manifest"
      uses: luiscusihuaman/okteto-deploy@latest
      with:
        build: "true"
```

 ```yaml
 # File: .github/workflows/workflow.yml
 on: [push]

 name: example

 jobs:
   devflow:
     runs-on: ubuntu-latest
     steps:
     - uses: okteto/context@latest
       with:
         token: ${{ secrets.OKTETO_TOKEN }}
     - uses: okteto/namespace@latest
     - name: "Deploy okteto manifest"
       uses: luiscusihuaman/okteto-deploy@latest
       with:
         build: "true"
```