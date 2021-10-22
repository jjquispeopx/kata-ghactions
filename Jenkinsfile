pipeline {

  agent any

  options {
    parallelsAlwaysFailFast()
    timestamps()
  }

  parameters { booleanParam(name: 'FORCE_BUILD', defaultValue: false, description: '') }

  stages {
    stage("build") {
      parallel {
        stage("build-backend") {
          when {
            anyOf {
              expression { params.FORCE_BUILD == true }
              changeset "backend/"
            }
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
      when {
        beforeAgent true
        branch: 'production'
      }
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
