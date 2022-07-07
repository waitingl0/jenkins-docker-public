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
                            def jsonSlurper = new JsonSlurper()
                            def object = jsonSlurper.parseText('{ "items": [1, 2] }')
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
