Create table contacts(
    contact_id      INT             NOT NULL        Primary Key,
    first_name      Varchar(20)     NOT NULL,
    last_name       Varchar(20)     NOT NULL,
    email           Varchar(50)     NOT NULL
);

Create table category (
    category_id     Varchar(4)      NOT NULL         Primary Key,
    category        Varchar(20)     NOT NULL
);

Create table subcategory (
    subcategory_id     Varchar(4)      NOT NULL         Primary Key,
    subcategory        Varchar(20)     NOT NULL
);

Create table campaign(
    cf_id           INT         NOT NULL        Primary Key,
    contact_id      Varchar(4)  NOT NULL,
    company_name    Varchar(20) NOT NULL,
    description     Varchar(200) NOT NULL,
    goal            INT         NOT NULL,
    pledged         INT         NOT NULL,
    outcome         Varchar(25)    NOT NULL,
    backers_count   INT         NOT NULL,
    country         Varchar(4)  NOT NULL,
    currency        Varchar(4)  NOT NULL,
    launchec_date   Date        NOT NULL,
    ened_date       Date        NOT NULL,
    category_id     Varchar(20) NOT NULL,
    subcategory_id  Varchar(20) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id)
);
