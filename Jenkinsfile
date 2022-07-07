pipeline {
    agent none
    stages {
        stage('Agent Test') {
            parallel {
                stage('Agent1') {
                    agent {
                        label "agent1X"
                    }
                    steps {
                        script {
                            def object = readJSON file: 'files.json'
                            object.items.each { item ->
                                lock('agent1-compute') {
                                    echo "Agent1 - ${item}"
                                }
                            }
                        }
                    }
                }
            }   
        }
    }
}
