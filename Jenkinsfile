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
                            import groovy.json.JsonSlurper
                            def object = new JsonSlurper().parseText('{ "items": [1, 2] }')
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
