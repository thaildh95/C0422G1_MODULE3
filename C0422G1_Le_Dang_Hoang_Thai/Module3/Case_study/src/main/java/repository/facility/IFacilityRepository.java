package repository.facility;

import model.contract.Facility;
import model.contract.FacilityType;
import model.contract.RentType;

import java.util.List;

public interface IFacilityRepository {
    List<Facility> findAll();

   boolean addNewFacility(Facility facility);

    void updateFacility(Facility facility);

    void deleteFacility(int id);

    Facility findById(int id);

    List<FacilityType> showFacilityType();

    List<RentType> showRentType();

    List<Facility> findByNameAndId(String id,String name);

}
