import java.util.ArrayList;
import java.util.Collection;

import ftrs.dao.AirportDao;
import ftrs.entity.Airport;

public class Test {
	public static void main(String[] arg) {
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
}
