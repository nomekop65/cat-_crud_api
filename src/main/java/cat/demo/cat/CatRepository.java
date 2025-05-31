package cat.demo.cat;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CatRepository extends JpaRepository<Cat, Long> {

    List<Cat> getCatsByName(String name);

    @Query("SELECT c FROM Cat c WHERE c.age = ?1")
    List<Cat> getAge(String age);

    @Query("SELECT c FROM Cat c WHERE c.color = ?1")
    List<Cat> getColor(String color);
}