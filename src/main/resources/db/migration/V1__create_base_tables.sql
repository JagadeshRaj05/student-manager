CREATE TABLE role (
    id SERIAL CONSTRAINT role_pk PRIMARY KEY,
    name TEXT NOT NULL CONSTRAINT role_name_unq UNIQUE,
    created_at TIMESTAMP WITH TIME ZONE  NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL

);

CREATE TABLE users (
    id BIGSERIAL CONSTRAINT users_pk PRIMARY KEY,
    username TEXT NOT NULL CONSTRAINT teacher_name_unq UNIQUE,
    password TEXT NOT NULL,
    role_id INTEGER REFERENCES role (id),
    created_at TIMESTAMP WITH TIME ZONE  NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL
);

CREATE TABLE student_personal_info (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT REFERENCES users (id) CONSTRAINT student_unique_info UNIQUE,
    department TEXT NOT NULL,
    mobile_number TEXT NOT NULL CONSTRAINT student_mobile_unq UNIQUE,
    email TEXT NOT NULL CONSTRAINT student_mail_unq UNIQUE,
    created_at TIMESTAMP WITH TIME ZONE  NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE NOT NULL
);

CREATE TABLE marks (
    student_id BIGINT REFERENCES users (id),
    subject TEXT NOT NULL,
    mark INTEGER NOT NULL,
    CONSTRAINT marks_pk PRIMARY KEY (student_id, subject)
);
