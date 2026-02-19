-- Author: Kristine Barruzo
-- Adds foreign key for app_user.role_id referencing user_role.role_id

ALTER TABLE app_user
ADD CONSTRAINT fk_app_user_role
FOREIGN KEY (role_id)
REFERENCES user_role(role_id)
ON DELETE RESTRICT;