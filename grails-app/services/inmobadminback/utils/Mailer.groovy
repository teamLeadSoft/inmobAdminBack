package inmobadminback.utils

import grails.plugin.mail.*;

/**
 * Created by gonzaloGar on 05/09/16.
 */
class Mailer {

    def static envMail(toArg, subjectArg, bodyArg){
        sendMail {
            to toArg
            subject subjectArg
            body bodyArg
        }
    }
}
