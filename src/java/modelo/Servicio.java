package modelo;

import java.util.ArrayList;
import javax.ejb.Singleton;

@Singleton
public class Servicio implements ServicioLocal {
    private ArrayList<Producto> lista = new ArrayList();
    
    

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    public Servicio() {
        lista.add(new Producto("Billetera",3000));
        lista.add(new Producto("Pantalón",9990));
    }

    @Override
    public void addProducto(Producto p) {
        lista.add(p);
    }

    @Override
    public ArrayList<Producto> getProductos() {
        return lista;
    }
}