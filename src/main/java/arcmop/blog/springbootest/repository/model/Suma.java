package arcmop.blog.springbootest.repository.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Suma {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idsum;

    double sumando01;
    double sumando02;
    double resultado;
}
