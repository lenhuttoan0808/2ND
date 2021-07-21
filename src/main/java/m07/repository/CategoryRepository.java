package m07.repository;

import m07.entity.Category;
import m07.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CategoryRepository extends CrudRepository<Category, Integer> {

    @Query(value = "select  *from categories where supplierId = ? ", nativeQuery = true)
    public List<Category> findBySupplier(@Param("id") int id);

}

