databaseChangeLog = {

    changeSet(author: "josephrinehart (generated)", id: "1510601059468-1") {
        createTable(tableName: "applicationoauth_token") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(primaryKey: "true", primaryKeyName: "applicationoauth_tokenPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "access_token", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "user_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "provider", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "josephrinehart (generated)", id: "1510601059468-2") {
        addUniqueConstraint(columnNames: "access_token", constraintName: "UC_APPLICATIONOAUTH_TOKENACCESS_TOKEN_COL", tableName: "applicationoauth_token")
    }

    changeSet(author: "josephrinehart (generated)", id: "1510601059468-3") {
        createIndex(indexName: "identity_idx", tableName: "applicationoauth_token") {
            column(name: "access_token")

            column(name: "provider")
        }
    }

    changeSet(author: "josephrinehart (generated)", id: "1510601059468-4") {
        addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "applicationoauth_token", constraintName: "FKetrikmdm11f073wkvs7t13wd0", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "application_user")
    }
}
