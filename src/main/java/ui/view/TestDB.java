package ui.view;

import domain.model.Country;

import java.sql.*;
import java.util.Properties;

public class TestDB {
    public static void main(String[] args) throws SQLException {
        // set properties for the db connection
        Properties properties = new Properties();
        // in what follows: replace "webontwerp" by the name of your database
        // replace "web3" by the name of your schema
        String url = "jdbc:postgresql://databanken.ucll.be:62021/webontwerp";
        String schema = "web3";
        try {
            Class.forName("ui.view.Secret"); // implementation of abstract class Credentials
            Secret.setPass(properties);
        } catch (ClassNotFoundException e) {
            System.out.println("Class ui.view.Secret with credentials not found!");
        }
        properties.setProperty("ssl", "true");
        properties.setProperty("sslfactory", "org.postgresql.ssl.NonValidatingFactory");
        properties.setProperty("sslmode", "prefer");

        // open the db connection
        Connection connection = DriverManager.getConnection(url, properties);

        // first an example for execute: set the search_path for this connection
        String querySetSearchPath = "SET search_path = web3;";
        Statement statement = connection.createStatement();
        statement.execute(querySetSearchPath);

        // set the schema for your query
        // get all the countries
        // notice that web3 is the schema name
        String query = String.format("SELECT * from %s.country;", schema);
        statement.executeQuery(query);
        ResultSet result = statement.getResultSet();

        System.out.println("All countries");
        while (result.next()) {
            String name = result.getString("name");
            String capital = result.getString("capital");
            int numberOfVotes = result.getInt("votes");
            int numberOfInhabitants = result.getInt("inhabitants");
            try {    // validation of data stored in database
                Country country = new Country(name, numberOfInhabitants, capital, numberOfVotes);
                System.out.println(country.toString());
            } catch (IllegalArgumentException e) {
                System.out.println(e.getMessage());
            }
        }

        // close the db connection
        connection.close();
    }
}
