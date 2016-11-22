package com.softserve.edu.delivery.config;

public class SecurityConstraints {

    // login and password parameters
    public static final String USERNAME_PARAM = "email";
    public static final String PASSWORD_PARAM = "password";

    public static final String AUTHENTICATED = "isAuthenticated()";
    public static final String CUSTOMER = "hasAuthority('Customer')";
    public static final String DRIVER = "hasAuthority('Driver')";
    public static final String CUSTOMER_OR_DRIVER = "hasAuthority('Customer') or hasAuthority('Driver')";
    public static final String ADMIN = "hasAuthority('Admin')";
    public static final String MODERATOR = "hasAuthority('Moderator')";


    public static final String WELCOME_PAGE = "/welcome";
    public static final String LOGIN_PAGE = "/login";
    public static final String REGISTRATION_PAGE = "/registration";
    public static final String REGISTRATION_EMAIL_VERIFIED_URL = "/register";
    public static final String LOGIN_PROCESS_URL = "/loginProcess";
    public static final String AUTH_REDIRECT_URL = "/authRedirect";
    public static final String FAILURE_LOGIN_URL = "/login?authError";
    public static final String LOGOUT_URL = "/login?logout";

    public static final String PAGE_NOT_FOUND_URL = "/notFound";
    public static final String INTERNAL_SERVER_ERROR_URL = "/serverError";
    public static final String ACCESS_DENIED_URL = "/accessDenied";

    public static final String CUSTOMER_PAGE = "/#/orders/open";
    public static final String DRIVER_PAGE = "/#/driver";
    public static final String ADMIN_PAGE = "/#/users";
    public static final String MODERATOR_PAGE = "/#/feedbacks";

    public static final String LINKED_IN_LOGIN_URL = "/login/linkedin";
    public static final String LINKED_IN_CALLBACK_URL = "/login/linkedin/callback";
    public static final String GOOGLE_LOGIN_URL = "/login/google";
    public static final String GOOGLE_CALLBACK_URL = "/login/google/callback";

    public static final String[] SOCIAL_URLs = {
            LINKED_IN_LOGIN_URL,
            LINKED_IN_CALLBACK_URL,
            GOOGLE_LOGIN_URL,
            GOOGLE_CALLBACK_URL
    };

    public static final String[] ERROR_URLs = {
            PAGE_NOT_FOUND_URL,
            INTERNAL_SERVER_ERROR_URL,
            ACCESS_DENIED_URL
    };

    public static final String[] STATIC_RESOURCES = {
            "/app/**",
            "/bower_components/**",
            "/css/**",
            "/i18n/**",
            "/img/**",
            "/video/**"
    };
}