package service.facility.impl;

import model.contract.Facility;
import model.contract.FacilityType;
import model.contract.RentType;
import model.person.customer.Customer;
import repository.facility.IFacilityRepository;
import repository.facility.impl.FacilityRepository;
import service.facility.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private  static IFacilityRepository facilityRepository = new FacilityRepository();
    @Override
    public List<Facility> findAll() {
       return facilityRepository.findAll();
    }

    @Override
    public boolean addFacility(Facility facility) {
            return facilityRepository.addNewFacility(facility);

    }

    @Override
    public boolean editFacility(Facility facility) {
        return false;
    }


    @Override
    public void delete(int id) {

    }

    @Override
    public void deleteFacility(int id) {

    }

    @Override
    public Facility findById(int id) {
        return null;
    }

    @Override
    public List<FacilityType> showFacilityType() {
        return null;
    }

    @Override
    public List<RentType> showRentType() {
        return null;
    }

    @Override
    public List<Facility> findByNameAndId(String id, String name) {
        return null;
    }
}
