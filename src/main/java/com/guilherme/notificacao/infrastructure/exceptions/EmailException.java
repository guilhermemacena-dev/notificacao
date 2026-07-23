package com.guilherme.notificacao.infrastructure.exceptions;

import com.guilherme.notificacao.business.EmailService;

public class EmailException extends RuntimeException {
    public EmailException(String message) {
        super(message);

    }

    public EmailException(String mensagem, Throwable throwable){
        super(mensagem, throwable);
    }
}
