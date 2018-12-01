CREATE TABLE accounts (manager text, company text, contact_email text);

ALTER TABLE accounts ENABLE ROW LEVEL SECURITY;

CREATE POLICY account_managers ON accounts TO schemainspect_test_role
    USING (manager = current_user);

CREATE TABLE accounts2 (manager text, company text, contact_email text);
