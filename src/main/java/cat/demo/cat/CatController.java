package cat.demo.cat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CatController {
    @Autowired
    private CatService catService;

    @GetMapping("/cats")
    public Object getAllCats() {
        return catService.getallCats();
    }

    @GetMapping("/cats/{id}")
    public Cat getCatById(@PathVariable Long id) {
        return catService.getCatById(id);
    }

    @GetMapping("/cats/name")
    public Object getCatByName(@RequestParam String name) {
        return catService.getCatByName(name);
    }

    @GetMapping("/cats/age")
    public Object getCatByAge(@RequestParam String age) {
        return catService.getCatByAge(age);
    }

    @GetMapping("/cats/color")
    public Object getCatByColor(@RequestParam String color) {
        return catService.getCatByColor(color);
    }

    @GetMapping("/cats/description")
    public Object getCatByDescription(@RequestParam String description) {
        return catService.getCatByDescription(description);
    }

    @PostMapping("/cats")
    public Cat addCat(@RequestBody Cat cat) {
        return catService.addCat(cat);
    
    }

    @PutMapping("/cats/{id}")
    public Cat updateCat(@PathVariable Long id, @RequestBody Cat cat) {
        catService.updateCat(id, cat); // Ensure the cat exists before updating
        return catService.getCatById(id);
    }
    @DeleteMapping("/cats/{id}")
    public Object deleteCat(@PathVariable Long id) {
        catService.deleteCat(id);
        return catService.getallCats();
    }

    @PostMapping("/cats/writeFile")
    public Object writeJson(@RequestBody Cat cat) {
        catService.writeJson(cat);
        return catService.writeJson(cat);
    }
    @GetMapping("/cats/readFile")
    public String readJson() {
        return catService.readJson();
    }

}
