import sqlite3

def execute_query(connection, query):
    try:
        cursor = connection.cursor()
        cursor.execute(query)
        connection.commit()
        return cursor
    except sqlite3.Error as e:
        print(f"Błąd SQLite: {e}")

def main():
    # Nawiązanie połączenia z bazą danych
    conn = sqlite3.connect('../database/database.db')

    # Tworzenie tabeli
    create_table_query = '''CREATE TABLE IF NOT EXISTS example_table (
                                id INTEGER PRIMARY KEY,
                                name TEXT NOT NULL)'''
    execute_query(conn, create_table_query)

    # Dodawanie wiersza
    insert_query = '''INSERT INTO example_table (name) VALUES ('Test Name')'''
    execute_query(conn, insert_query)

    # Wypisanie wszystkich wierszy
    select_query = '''SELECT * FROM example_table'''
    cursor = execute_query(conn, select_query)
    rows = cursor.fetchall()
    print("Wiersze w tabeli:")
    for row in rows:
        print(row)

    # Usunięcie tabeli
    drop_table_query = '''DROP TABLE example_table'''
    execute_query(conn, drop_table_query)

    # Zamknięcie połączenia
    conn.close()

if __name__ == "__main__":
    main()
