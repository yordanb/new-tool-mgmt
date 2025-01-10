/*
Please defined column with relationship like this:
user_profile_id INT REFERENCES user_profile(id),
partner_id INT REFERENCES user_profile(id),
customer_id INT REFERENCES user_profile(id),

; Required for each CREATE TABLE statement
*/
-- @common


CREATE TABLE user_profile ( 
    id SERIAL PRIMARY KEY, 
    image_url TEXT,
    user_profile_name VARCHAR(100),
    gender VARCHAR(255) CHECK (gender IN ('Male', 'Female')),
    email VARCHAR(255) UNIQUE,
    mobile_number TEXT,
    fcm_token TEXT,
    password VARCHAR(255),
    role VARCHAR(255) CHECK (role IN ('Admin', 'User')),
    
    
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE application_config ( 
    id SERIAL PRIMARY KEY, 
    app_mode VARCHAR(255) CHECK (app_mode IN ('Production', 'Development', 'Maintenance')),
    company_name TEXT,
    address TEXT,
    phone_number TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE app_session ( 
    id SERIAL PRIMARY KEY, 
    user_profile_id INT REFERENCES user_profile(id),
    role TEXT,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE app_queue ( 
    id SERIAL PRIMARY KEY, 
    user_profile_id INT REFERENCES user_profile(id),
    action TEXT,
    action_data TEXT,
    app_mode VARCHAR(255) CHECK (app_mode IN ('Queued')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE app_bluetooth ( 
    id SERIAL PRIMARY KEY, 
    device_name TEXT,
    device_address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE app_printer ( 
    id SERIAL PRIMARY KEY, 
    message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- :@common












-- @warehouse_app
CREATE TABLE tool (
  id SERIAL PRIMARY KEY, 
  name TEXT,
  description text,
  image_url TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

CREATE TABLE loan_transaction (
  id SERIAL PRIMARY KEY, 
  status VARCHAR(255) CHECK (status IN ('Ongoing', 'Done')),
  user_profile_id INT REFERENCES user_profile(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

CREATE TABLE loan_transaction_item (
  id SERIAL PRIMARY KEY, 
  loan_transaction_id INT REFERENCES loan_transaction(id),
  tool_id INT REFERENCES tool(id),
  qty INT,
  memo TEXT,
  status VARCHAR(255) CHECK (status IN ('Borrowed', 'Returned', 'Damaged', 'Lost')),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 
-- :@warehouse_app

