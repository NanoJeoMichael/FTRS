import java.math.BigDecimal;
import java.sql.Date;
import java.util.ArrayList;

import ftrs.dao.AirportDao;
import ftrs.dao.ClientDao;
import ftrs.entity.Airport;
import ftrs.entity.Client;

public class Test {
	public static void testAirport() {
		Airport airport = new Airport();
		airport.setName("江西机场");

		// insert
		AirportDao airportDao = new AirportDao();
		if (airportDao.insert(airport))
			System.out.println("Insert success!");
		else
			System.out.println("Insert failure.");
		// query
		ArrayList<Airport> airports = (ArrayList<Airport>) airportDao
				.query("id='12345678'");
		for (int i = 0; i < airports.size(); i++) {
			System.out.println(airports.get(i).getId());
			System.out.println(airports.get(i).getName());
		}
		// update
		if (airportDao.update(airport))
			System.out.println("Update success!");
		else
			System.out.println("Update failure!");
		// query
		airports = (ArrayList<Airport>) airportDao.query("id='12345678'");
		for (int i = 0; i < airports.size(); i++) {
			System.out.println(airports.get(i).getId());
			System.out.println(airports.get(i).getName());
		}
		// delete
		if (airportDao.delete(airport))
			System.out.println("delete success!");
		else
			System.out.println("delete failure!");
		// query
		airports = (ArrayList<Airport>) airportDao.query("id='12345678'");
		for (int i = 0; i < airports.size(); i++) {
			System.out.println(airports.get(i).getId());
			System.out.println(airports.get(i).getName());
		}
	}

	@SuppressWarnings("deprecation")
	public static void testClient() {
		// set
		Client client = new Client();
		client.setId("001");
		client.setName("Nano.Michael");
		client.setEmail("NanoJeoMichael@hotmail.com");
		client.setBirDate(new Date(2013, 9, 10));
		client.setPwd("258456");
		client.setSex("男");
		// query
		ClientDao clientDao = new ClientDao();
		ArrayList<Client> clients = (ArrayList<Client>) clientDao.query("");
		for (int i = 0; i < clients.size(); i++) {
			System.out.println(client.getName());
			System.out.println(client.getSex());
		}
		// insert
		if (clientDao.insert(client)) {
			System.out.println("Insert success!");
		} else {
			System.out.println("Insert failure!");
		}
		//update
		client.setId("123");
		if (clientDao.update("001", client)){
			System.out.println("update success.");
		} else {
			System.out.println("update failure.");
		}
		// query
		clients = (ArrayList<Client>) clientDao.query("");
		for (int i = 0; i < clients.size(); i++) {
			System.out.println(clients.get(i).getName());
			System.out.println(clients.get(i).getSex());
			System.out.println(clients.get(i).getEmail());
		}
	}

	public static void main(String[] arg) {
		testClient();
	}
}
