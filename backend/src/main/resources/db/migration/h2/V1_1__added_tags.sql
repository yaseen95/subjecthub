/* THIS FILE IS CLOSED FOR EDITING. YOU SHOULD MAKE CHANGES IN A NEW SQL FILE */
CREATE TABLE tags (
    tag_id BIGINT IDENTITY PRIMARY KEY,
    name VARCHAR (200) NOT NULL UNIQUE,
);

CREATE TABLE tags_subjects (
    tag_id BIGINT NOT NULL,
    subject_id BIGINT NOT NULL,
    FOREIGN KEY (tag_id) REFERENCES tags (tag_id),
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id),
    PRIMARY KEY(tag_id, subject_id)
);
/* THIS FILE IS CLOSED FOR EDITING. YOU SHOULD MAKE CHANGES IN A NEW SQL FILE */
