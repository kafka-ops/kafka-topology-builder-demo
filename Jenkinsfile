pipeline {

    agent {
      docker { image 'purbon/kafka-topology-builder:latest' }
    }

   stages {
      stage('verify-replication-factor') {
         steps {
             sh 'checks/verify-replication-factor.sh ${TopologyFiles} 3'
         }
      }
      stage('verify-num-of-partitions') {
         steps {
            sh 'checks/verify-num-of-partitions.sh ${TopologyFiles} 11'
         }
      }
      stage('run') {
          steps {
              withCredentials([usernamePassword(credentialsId: 'confluent-cloud	', usernameVariable: 'CLUSTER_API_KEY', passwordVariable: 'CLUSTER_API_SECRET')]) {
                sh './demo/build-connection-file.sh > topology-builder.properties'
              }
              sh 'kafka-topology-builder.sh  --brokers ${Brokers} --clientConfig topology-builder.properties --topology ${TopologyFiles}'
          }
      }
   }
}
