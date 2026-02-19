-- Author: Kristine Barruzo
-- Creates index on app_user.role_id for improved query performance

CREATE INDEX IF NOT EXISTS idx_app_user_role_id ON app_user(role_id);