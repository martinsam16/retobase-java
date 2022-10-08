package arcmop.blog.springbootest.repository;

import arcmop.blog.springbootest.repository.model.Suma;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SumaRepository extends JpaRepository<Suma, Integer> {
}
