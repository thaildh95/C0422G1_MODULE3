package service.facility;

import model.contract.Facility;
import model.contract.FacilityType;
import model.contract.RentType;
import model.person.customer.Customer;

import java.util.List;

public interface IFacilityService {
    List<Facility> findAll();

    boolean addFacility(Facility facility);

    boolean editFacility(Facility facility);

    void delete(int id);

    void deleteFacility(int id);

    Facility findById(int id);

    List<FacilityType> showFacilityType();

    List<RentType> showRentType();

    List<Facility> findByNameAndId(String id, String name);
}
