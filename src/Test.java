import java.math.BigDecimal;
import java.util.ArrayList;

import ftrs.dao.AirportDao;
import ftrs.dao.ClientDao;
import ftrs.entity.Airport;
import ftrs.entity.Client;
import ftrs.entity.ClientType;

public class Test {
	public static void testAirport() {
		Airport airport = new Airport();
		airport.setId("12345678");
		airport.setAddress("江西省南昌市");
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
			System.out.println(airports.get(i).getAddress());
		}
		// update
		airport.setAddress("江西省南昌市南昌区");
		if (airportDao.update(airport))
			System.out.println("Update success!");
		else
			System.out.println("Update failure!");
		// query
		airports = (ArrayList<Airport>) airportDao.query("id='12345678'");
		for (int i = 0; i < airports.size(); i++) {
			System.out.println(airports.get(i).getId());
			System.out.println(airports.get(i).getName());
			System.out.println(airports.get(i).getAddress());
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
			System.out.println(airports.get(i).getAddress());
		}
	}

	public static void testClient() {
		// set
		Client client = new Client();
		client.setId("001");
		client.setName("Nano.Michael");
		client.setAddress("重庆理工大学");
		client.setAge(21);
		client.setEmail("NanoJeoMichael@hotmail.com");
		client.setPhone("13527443907");
		client.setIdNum("430581199209075537");
		client.setPwd("258456");
		client.setSex("男");
		client.setAmount(new BigDecimal(0));
		ClientType ct = new ClientType();
		ct.setId("123");
		client.setClientType(ct);
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
		// query
		clients = (ArrayList<Client>) clientDao.query("");
		for (int i = 0; i < clients.size(); i++) {
			System.out.println(client.getName());
			System.out.println(client.getSex());
		}
	}

	public static void main(String[] arg) {
		testClient();
	}
}
