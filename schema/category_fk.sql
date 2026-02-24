-- Author: Armando Sarza
-- Notes: (02/20|9:50pm) Edited to make this file re-runnable

ALTER TABLE category
DROP CONSTRAINT IF EXISTS fk_category_userid;

ALTER TABLE category
ADD CONSTRAINT fk_category_userid
FOREIGN KEY (user_id)
REFERENCES app_user(user_id)
ON DELETE CASCADE;