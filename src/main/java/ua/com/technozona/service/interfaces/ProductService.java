package ua.com.technozona.service.interfaces;

import org.springframework.web.multipart.MultipartFile;
import ua.com.technozona.model.Product;

import java.util.List;

public interface ProductService extends MainService<Product> {

    Product getByUrl(String url);

    List<Product> getByCategoryUrl(String url);

    List<Product> getByCategoryId(Long id);

    List<Product> getRandomByCategoryId(
            int size,
            Long categoryId,
            Long differentProductId
    );

    List<Product> getRandomByCategoryId(
            int size, Long id
    );

    List<Product> getRandom(int size);

    void removeByUrl(String url);


    void removeByCategoryUrl(String url);

    void removeByCategoryId(Long id);

    void saveFile(MultipartFile photo);

    String saveFile(MultipartFile photo, String fileName);

    void deleteFile(String url);
}
