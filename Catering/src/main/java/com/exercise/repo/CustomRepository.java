package com.exercise.repo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CustomRepository {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CustomRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void executeNativeQueries() {
        jdbcTemplate.execute("USE catering");

        jdbcTemplate.execute("CREATE TEMPORARY TABLE temp_dates " +
                "SELECT id " +
                "FROM catering.date_register " +
                "WHERE date IN (SELECT my_date FROM catering.holiday)");

        jdbcTemplate.execute("DELETE FROM catering.date_register " +
                "WHERE id IN (SELECT id FROM temp_dates)");

        jdbcTemplate.execute("DROP TEMPORARY TABLE IF EXISTS temp_dates");
    }
}
