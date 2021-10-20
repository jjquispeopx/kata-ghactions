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

**Nota:** Dentro de un script, los parametros pueden tomarse como variables de entorno.

```sh
# build.sh
#!/bin/bash
echo "$Gretting"

# Jenkinsfile
properties([
  parameters([
    string(defaultValue: 'Hello', description: 'How should I greet the world?', name: 'Greeting')
  ])
])

node {
  stage('source') {
    sh "./build.sh"
    sh "sh build.sh"
  }
}

```

