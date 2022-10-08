package arcmop.blog.springbootest.controladores;

import arcmop.blog.springbootest.dto.SumaDto;
import arcmop.blog.springbootest.service.SumaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping
public class ControladorHolaMundo {

    @Autowired
    private SumaService sumaService;

    @GetMapping(value = "/sumar/{sum01}/{sum02}", produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody SumaDto saludar(@PathVariable("sum01") Integer sum01, @PathVariable("sum02") Integer sum02) {
        return new SumaDto((int)sumaService.calculateAndSave(sum01, sum02).getResultado());
    }

}
