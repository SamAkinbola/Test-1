import snowflake.connector
import os
import sys

def validate_sql(file_path, conn_params):
    try:
        # Establish connection
        conn = snowflake.connector.connect(**conn_params)
        cursor = conn.cursor()
        
        # Read SQL file
        with open(file_path, 'r') as f:
            sql = f.read()
        
        # Use EXPLAIN or PREPARE to validate
        cursor.execute(f"EXPLAIN USING TABULAR {sql}")
        print(f"Validation successful for {file_path}")
        return True
    except Exception as e:
        print(f"Validation failed for {file_path}: {str(e)}")
        return False
    finally:
        cursor.close()
        conn.close()

if _name_ == "_main_":
    if len(sys.argv) != 2:
        print("Usage: python validate_sql.py <sql_file>")
        sys.exit(1)
    
    file_path = sys.argv[1]
    conn_params = {
        "account": os.getenv("SNOWFLAKE_ACCOUNT"),
        "user": os.getenv("SNOWFLAKE_USER"),
        "password": os.getenv("SNOWFLAKE_PASSWORD"),
        "role": os.getenv("SNOWFLAKE_ROLE"),
        "warehouse": os.getenv("SNOWFLAKE_WAREHOUSE"),
        "database": os.getenv("SNOWFLAKE_DATABASE"),
        "schema": os.getenv("SNOWFLAKE_SCHEMA"),
    }
    
    if not validate_sql(file_path, conn_params):
        sys.exit(1)
