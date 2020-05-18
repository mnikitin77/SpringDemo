package com.mvnikitin.springdemo.rest.exception;

import org.springframework.http.HttpStatus;

public interface ResourceRESTException {
    HttpStatus getHTTPStatus();
}
