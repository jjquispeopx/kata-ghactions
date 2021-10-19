pipeline {

  agent any

  stages {
    stage("build") {
      steps {
        echo "Hello..! Running job #${env.BUILD_NUMBER}"
      }
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

  post {
    success {
      slackSend color: 'good', message: sh(returnStdout: true, script: 'echo "Job #$BUILD_NUMBER Successful..!"'), channel: "#kata-jenkins"
    }
  }
}
