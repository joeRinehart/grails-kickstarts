databaseChangeLog = {

    changeSet(author: "josephrinehart (generated)", id: "1509739092174-1") {
        createTable(tableName: "application_role") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(primaryKey: "true", primaryKeyName: "application_rolePK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "authority", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "josephrinehart (generated)", id: "1509739092174-2") {
        createTable(tableName: "application_user") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(primaryKey: "true", primaryKeyName: "application_userPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "password_expired", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "username", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "account_locked", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "password_hash", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "account_expired", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "enabled", type: "bit") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "josephrinehart (generated)", id: "1509739092174-3") {
        createTable(tableName: "application_user_application_role") {
            column(name: "application_user_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "application_role_id", type: "bigint") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "josephrinehart (generated)", id: "1509739092174-4") {
        addPrimaryKey(columnNames: "application_user_id, application_role_id", constraintName: "application_user_application_rolePK", tableName: "application_user_application_role")
    }

    changeSet(author: "josephrinehart (generated)", id: "1509739092174-5") {
        addUniqueConstraint(columnNames: "authority", constraintName: "UC_APPLICATION_ROLEAUTHORITY_COL", tableName: "application_role")
    }

    changeSet(author: "josephrinehart (generated)", id: "1509739092174-6") {
        addUniqueConstraint(columnNames: "username", constraintName: "UC_APPLICATION_USERUSERNAME_COL", tableName: "application_user")
    }

    changeSet(author: "josephrinehart (generated)", id: "1509739092174-7") {
        addForeignKeyConstraint(baseColumnNames: "application_user_id", baseTableName: "application_user_application_role", constraintName: "FK9ql7shq947hh9um3po1eyvl2k", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "application_user")
    }

    changeSet(author: "josephrinehart (generated)", id: "1509739092174-8") {
        addForeignKeyConstraint(baseColumnNames: "application_role_id", baseTableName: "application_user_application_role", constraintName: "FKmxvkushvbxywinit6ljtsehpt", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "application_role")
    }
}
