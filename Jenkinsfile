pipeline {
     agent any
     stages {
          stage("Compile") {
               steps {
                    sh "/usr/bin/mvn compile"
               }
          }
          stage("Unit test") {
               steps {
                    sh "/usr/bin/mvn test"
               }
          }
     
    
stage("Package") {
     steps {
          sh "/usr/bin/mvn package"
     }
}
stage("Docker build") {
     steps {
      
          sh "docker build -t deepak_tomcat ."
     }
}

stage("Deploy to staging") {
     steps {
 
          sh '''docker run --rm -e SITE_URL=www.google.com -v $(pwd)/vol:/data/:rw test-curl'''
     }
}

     }
  post {
     always {
          sh "echo 'I did It'"
     }
}
}
