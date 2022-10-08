package arcmop.blog.springbootest.repository.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Suma {

    @Id
    @GeneratedValue
    private int id;

    double sumando01;
    double sumando02;
    double resultado;
}
