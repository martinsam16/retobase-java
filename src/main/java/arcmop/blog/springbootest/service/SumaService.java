package arcmop.blog.springbootest.service;

import arcmop.blog.springbootest.repository.SumaRepository;
import arcmop.blog.springbootest.repository.model.Suma;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SumaService {

    @Autowired
    private SumaRepository sumaRepository;

    public Suma calculateAndSave(double x, double y) {
        Suma suma = Suma.builder()
                .sumando01(x)
                .sumando02(y)
                .resultado(x + y)
                .build();
        return sumaRepository.save(suma);
    }

    public List<Suma> findAll(){
        return sumaRepository.findAll();
    }

}
