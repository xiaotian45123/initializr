pipeline {
    agent {
        kubernetes {
            inheritFrom 'openjdk21maven3'
            defaultContainer 'openjdk21maven3'
        }
    }
    
    stages {
        stage('Build code') {
            steps {
                container('openjdk21maven3') {
                    sh "pwd && ls -l && ./mvnw clean package -DskipTests"
                }
            }
        }
        stage('Deploy') {
            steps {
                container('kaniko'){
                    sh "sleep  50 && executor --context=`pwd` --dockerfile=`pwd`/Dockerfile --destination=fangcangorg/openjdk21:01"
                }
            }
        }
    }
    post {
        success {
            // 构建成功后的操作
            echo 'Build successful!'
        }
        failure {
            // 构建失败后的操作
            echo 'Build failed!'
        }
    }
}