package modelo;

import java.util.ArrayList;
import javax.ejb.Local;

@Local
public interface ServicioLocal {

    void addProducto(Producto p);

    ArrayList<Producto> getProductos();
    
}
