pipeline {

  agent any

  options {
    parallelsAlwaysFailFast()
  }

  parameters { booleanParam(name: 'FORCE_BUILD', defaultValue: false, description: '') }

  stages {
    stage("build") {How should I greet the world?')
  }

  stages {
    stage("build") {
      parallel {
        stage("build-backend") {
          when {
            expression { changeset "backend/" || params.FORCE_BUILD }
          }
          steps { echo "building backend..." }
        }
        stage("build-frontend") {
          when { changeset "frontend/" }
          steps { echo "building frontend..." }
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
