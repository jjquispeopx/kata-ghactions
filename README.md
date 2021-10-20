## Environments

```sh
node {
  env.GREETING = 'Hello'

  stage('source') {
    echo "${env.GREETING}"
    sh "$GREETING"
  }
}
``` 

## Parameters

```sh
properties([
  parameters([
    string(defaultValue: 'Hello', description: 'How should I greet the world?', name: 'Greeting')
  ])
])

node {
  stage('source') {
    echo "${params.Greeting}"
  }
}
```
