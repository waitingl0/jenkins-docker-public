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
                            // def object = readJSON text: '{ "items": [1, 2] }'
                            def object = readJSON file: 'files.json'
                            object.items.each { item ->
                                echo "Agent1 - ${item}"
                            }
                        }
                    }
                }
            }   
        }
    }
}
