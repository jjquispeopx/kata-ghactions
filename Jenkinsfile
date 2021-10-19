pipeline {

  agent any

  stages {
    stage("build") {
      echo "Hello..! Running job #${env.BUILD_NUMBER}"
    }
    stage("test") {
      steps {
        echo "running test..."
      }
    }
    stage("release") {
      steps {
        echo "push images..."
      }
    }
    stage("deploy") {
      steps {
        echo "running deploy..."
      }
    }
  }
}
