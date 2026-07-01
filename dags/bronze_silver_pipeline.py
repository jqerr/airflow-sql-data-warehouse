import pendulum
from airflow.decorators import dag, task
from airflow.providers.microsoft.mssql.hooks.mssql import MsSqlHook

@dag(
    schedule="0 2 * * *",
    start_date=pendulum.datetime(2026, 1, 1, tz="Australia/Brisbane"),
    catchup=False,
)
def bronze_silver_pipeline():

    @task
    def load_bronze():
        hook = MsSqlHook(mssql_conn_id="mssql_datawarehouse")
        hook.run("EXEC bronze.load_bronze;", autocommit=True)

    @task
    def load_silver():
        hook = MsSqlHook(mssql_conn_id="mssql_datawarehouse")
        hook.run("EXEC silver.load_silver;", autocommit=True)

    load_bronze() >> load_silver()

bronze_silver_pipeline()