pipeline {
    agent any

    environment {
        STUDENT_NAME    = 'Adilzhan'
        STUDENT_SURNAME = 'Abdambayev'
        STUDENT_GROUP   = 'IT2-2309'
        STUDENT_ID      = '37144'
        IMAGE_NAME      = 'abdambayev-adilzhan-devops'
        CONTAINER_NAME  = 'abdambayev-adilzhan-container'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                sh 'git log -1 --oneline'
            }
        }
        stage('Build') {
            steps {
                echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP}"
                echo "Student ID: ${STUDENT_ID}"
                sh 'ls -la'
            }
        }
        stage('Test') {
            steps {
                sh 'test -f Dockerfile'
                sh 'test -f docker-compose.yml'
                sh 'test -f scripts/Abdambayev_Adilzhan_system.sh'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t ${IMAGE_NAME} .'
                sh 'docker images | grep ${IMAGE_NAME}'
            }
        }
        stage('Docker Run') {
            steps {
                sh 'docker rm -f ${CONTAINER_NAME} || true'
                sh 'docker run --name ${CONTAINER_NAME} -e STUDENT_NAME=${STUDENT_NAME} -e STUDENT_SURNAME=${STUDENT_SURNAME} -e STUDENT_GROUP=${STUDENT_GROUP} -e STUDENT_ID=${STUDENT_ID} ${IMAGE_NAME}'
                sh 'docker ps -a | grep ${CONTAINER_NAME}'
            }
        }
    }
}
