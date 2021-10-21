pipeline {

  agent any

  stages {
    stage("build") {
      parallel {
        stages {
          stage("build-backend") {
            when { changeset "backend/" }
            steps { echo "building backend..." }
          }
          stage("build-frontend") {
            when { changeset "frontend/" }
            steps { echo "building frontend..." }
          }
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
