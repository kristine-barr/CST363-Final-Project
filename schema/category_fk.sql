ALTER TABLE category
ADD CONSTRAINT fk_category_userid
FOREIGN KEY (user_id)
REFERENCES app_user(user_id);
