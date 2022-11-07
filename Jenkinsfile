pipeline {
  agent { label "jenkins-node" }

  triggers {
    //pollSCM('* * * * *')
    githubPush()
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/c1t1d0s7/test-maven-java-spring-hello-webapp.git'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn clean package -DskipTests=true'
      }
    }
    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('Deploy') {
      steps {
        deploy adapters: [tomcat9(credentialsId: 'tomcat-manager', url: 'http://3.38.197.19:8080')], contextPath: null, war: 'target/hello-world.war'
      }
    }
  }
}
