/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package arcmop.blog.springbootest.controladores;

import arcmop.blog.springbootest.repository.SumaRepository;
import arcmop.blog.springbootest.repository.model.Suma;
import arcmop.blog.springbootest.service.SumaService;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.mockito.Matchers.any;


@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
@ContextConfiguration(classes = {SumaRepository.class})
@EnableAutoConfiguration
public class SumaServiceTest {

    @MockBean(name = "sumaRepository")
    private SumaRepository sumaRepository;

    private final double SUM01 = 10.0;
    private final double SUM02 = 20.0;
    private final double RESULTADO = 30.0;

    private final Suma suma = Suma.builder()
            .sumando01(SUM01)
            .sumando02(SUM02)
            .resultado(RESULTADO)
            .build();

    public SumaServiceTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
        Mockito.when(sumaRepository.save(any(Suma.class)))
                .thenReturn(suma);
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of saludar method, of class ControladorHolaMundo.
     */
    @Test
    public void testSaludar() {
        Assert.assertNotNull(sumaRepository.save(suma));
        Assert.assertEquals(suma.getResultado(), sumaRepository.save(suma).getResultado(), 0);
    }

}
