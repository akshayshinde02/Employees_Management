package com.entities;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.provider.FactoryProvider;

public class Update {

    public void updateEmployee(int id, AddEmployee updatedEmployee) {
        Session session = FactoryProvider.getFactory().openSession();
        Transaction transaction = session.beginTransaction();

        // Fetch the employee to be updated by ID
        AddEmployee employee = session.get(AddEmployee.class, id);

        if (employee != null) {
            // Update only the properties that have non-null values in the updatedEmployee object
            if (updatedEmployee.getEmployee_name() != null) {
                employee.setEmployee_name(updatedEmployee.getEmployee_name());
            }
            if (updatedEmployee.getEmployee_fathername() != null) {
                employee.setEmployee_fathername(updatedEmployee.getEmployee_fathername());
            }
            if (updatedEmployee.getSalary() != 0) {
                employee.setSalary(updatedEmployee.getSalary());
            }
            if (updatedEmployee.getAddress() != null) {
                employee.setAddress(updatedEmployee.getAddress());
            }
            if (updatedEmployee.getEmail() != null) {
                employee.setEmail(updatedEmployee.getEmail());
            }
            if (updatedEmployee.getPhone() != null) {
                employee.setPhone(updatedEmployee.getPhone());
            }
            if (updatedEmployee.getDesignation() != null) {
                employee.setDesignation(updatedEmployee.getDesignation());
            }
            if (updatedEmployee.getAdhar_number() != null) {
                employee.setAdhar_number(updatedEmployee.getAdhar_number());
            }

            // Save or update the entity back to the database
            session.saveOrUpdate(employee);

            transaction.commit();
        }

        session.close(); // Close the session after transaction
    }
}
