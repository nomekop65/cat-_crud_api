package cat.demo.cat;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;


@Service
public class CatService {

    @Autowired
    private CatRepository catRepository;

    public Object getallCats() {
        return catRepository.findAll();
    }

    public Cat getCatById(@PathVariable Long id) {
        return catRepository.findById(id).orElse(null);
    }

    public Object getCatByName(String name) {
        return catRepository.getCatsByName(name);
    }

    public Object getCatByAge(String age) {
        return catRepository.getAge(age);
    }

    public Object getCatByColor(String color) {
        return catRepository.getColor(color);
    }

    public Object getCatByDescription(String description) {
        return catRepository.findAll();

    }
    
    public void addCat(Cat cat, MultipartFile imageFile) {
    if (imageFile != null && !imageFile.isEmpty()) {
        try {
            // Save the file to a folder (e.g., /uploads) and set the image URL
            String fileName = System.currentTimeMillis() + "_" + imageFile.getOriginalFilename();
            Path uploadPath = Paths.get("uploads");
            if (!Files.exists(uploadPath)) {
                Files.createDirectories(uploadPath);
            }
            Path filePath = uploadPath.resolve(fileName);
            Files.copy(imageFile.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
            cat.setImageUrl("/uploads/" + fileName);
        } catch (IOException e) {
            e.printStackTrace();
            // Optionally handle error (set default image, etc.)
        }
    }
    catRepository.save(cat);
}

    public Cat updateCat(Long id, Cat cat) {
        return catRepository.save(cat);
    }

    public void deleteCat(Long id) {
        catRepository.deleteById(id);
    }

    public String writeJson(Cat cat) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            objectMapper.writeValue(new File("cat.json"), cat);
            return "Cat data written to cat.json";
        } catch (IOException e) {
            e.printStackTrace();
            return "Error writing cat data to file";
        }
    }

    public String readJson() {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return objectMapper.readValue(new File("cat.json"), Cat.class).toString();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

}
