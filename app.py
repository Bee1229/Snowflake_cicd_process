from __future__ import annotations
from snowflake.snowpark.session import Session # type: ignore
from snowflake.snowpark import dataframe
from snowflake.snowpark.functions import col

def hello(session: Session) -> dataframe:
    df= session.table("product")
    return df

if __name__ == "__main__":
    from snowflake.snowpark.mock.mock_connection import MockServerConnection
    import init_local

    session = Session(MockServerConnection())
    session = init_local.init(session)
    print(hello(session).show())
