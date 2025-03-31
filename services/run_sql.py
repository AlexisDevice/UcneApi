from db import get_db_connection

def run_query(query, fetch):
    conn = get_db_connection()
    cursor = conn.cursor()
    response = {"res": "Funciona"}

    cursor.execute(query)

    if fetch:
        response = cursor.fetchall()
    else:
        conn.commit()

    cursor.close()
    conn.close()

    return response