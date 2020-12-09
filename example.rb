def method_that_does_sql
    <<-SQL
        SELECT * FROM bears;
    SQL
end