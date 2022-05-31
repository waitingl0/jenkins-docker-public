pipeline {
    agent none
    stages {
        stage('Agent Test') {
            parallel {
                stage('Agent1') {
                    agent {
                        label "agent1"
                    }
                    stages {
                        stage("build") {
                            steps {
                                sh '''
                                    sudo docker build -t python_test .
                                    sudo docker run python_test
                                '''
                            }
                        }
                    }
                }
            }   
        }
    }
}
