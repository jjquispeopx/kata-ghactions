pipeline {

  agent any

  stages {
    stage("build") {
      parallel {
        stage("build-frontend") {
          steps { echo "building frontend..." }
        }
        stage("build-backend") {
          steps { echo "building backend..." }
        }
      }
    }

    stage("Test") {
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
