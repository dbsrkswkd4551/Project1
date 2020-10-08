package org.hdcd.common.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class AccessLog {

    private String requestUri;
    private String className;
    private String classSimpleName;
    private String methodName;
    private String remoteAddr;
    private Date regDate;
}
