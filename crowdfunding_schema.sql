DROP TABLE campaign;
DROP TABLE contacts;
DROP TABLE category;
DROP TABLE subcategory;

CREATE TABLE contacts (
    contact_id      INT             NOT NULL        PRIMARY KEY,
    first_name      VARCHAR(20)     NOT NULL,
    last_name       VARCHAR(20)     NOT NULL,
    email           VARCHAR(50)     NOT NULL
);

CREATE TABLE category (
    category_id     VARCHAR(4)      NOT NULL        PRIMARY KEY,
    category        VARCHAR(20)     NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id  VARCHAR(10)      NOT NULL        PRIMARY KEY,
    subcategory     VARCHAR(20)     NOT NULL
);

CREATE TABLE campaign (
    cf_id           INT             NOT NULL        PRIMARY KEY,
    contact_id      INT             NOT NULL,
    company_name    VARCHAR(50)     NOT NULL,
    description     VARCHAR(200)    NOT NULL,
    goal            INT             NOT NULL,
    pledged         INT             NOT NULL,
    outcome         VARCHAR(25)     NOT NULL,
    backers_count   INT             NOT NULL,
    country         VARCHAR(50)     NOT NULL,
    currency        VARCHAR(10)      NOT NULL,
    launched_date   DATE            NOT NULL,
    ended_date      DATE            NOT NULL,
    category_id     VARCHAR(10)      NOT NULL,
    subcategory_id  VARCHAR(10)      NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
);

SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;

ALTER TABLE campaign
ALTER COLUMN goal TYPE NUMERIC;
ALTER TABLE campaign
ALTER COLUMN pledged TYPE NUMERIC;