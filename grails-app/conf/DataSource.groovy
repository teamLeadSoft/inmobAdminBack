dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    dialect = "org.hibernate.dialect.PostgreSQLDialect"
    username = "postgres"
    password = "postgres"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}

// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:postgresql://localhost:5432/inmobAdmin"

    //****** Console admin *********
    //           https://api.elephantsql.com/sso/3f9fb311-38c1-471f-a7e5-86b807154d6e/mgmt
    //******************************
    //
    //           url = "jdbc:postgresql://horton.elephantsql.com:5432/phykqetk"
    //            username = "phykqetk"
    //            password = "iknU1OiaPZusph5aWgu3PnpeepUAd3DS"
    //            properties {
    //                maxActive = 1
    //                numTestsPerEvictionRun=3
    //                testOnBorrow=true
    //                testWhileIdle=true
    //                testOnReturn=false
    //                validationQuery="SELECT 1"
    //                jdbcInterceptors="ConnectionState"
    //            }
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql://localhost:5432/inmobAdmin"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:prodDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
            properties {
                maxActive = -1
                minEvictableIdleTimeMillis=1800000
                timeBetweenEvictionRunsMillis=1800000
                numTestsPerEvictionRun=3
                testOnBorrow=true
                testWhileIdle=true
                testOnReturn=false
                validationQuery="SELECT 1"
                jdbcInterceptors="ConnectionState"
            }
        }
    }
}