package cat.demo.cat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CatController {
    @Autowired
    private CatService catService;

    @GetMapping("/cats")
    public Object getAllCats(Model model) {
        model.addAttribute("cats", catService.getallCats());
        model.addAttribute("title", "All Cats");
        return "cat-list";
    }

    @GetMapping("/cats/{id}")
    public String getCatById(@PathVariable Long id, Model model) {
        model.addAttribute("cat", catService.getCatById(id));
        model.addAttribute("title", "Cat #: " + id);
        return "cat-details";
    }

    @GetMapping("/cats/name")
    public String getCatByName(@RequestParam String name, Model model) {
        if (name != null) {
      model.addAttribute("cats", catService.getCatByName(name));
      model.addAttribute("title", "Students By Name: " + name);
      return "cat-list";
    } else {
      return "redirect:/cats/";
    }
    }

    @GetMapping("/cats/age")
    public String getCatByAge(@RequestParam String age, Model model) {
        model.addAttribute("cats", catService.getCatByAge(age));
        return "cat-list";
    }

    @GetMapping("/cats/color")
    public String getCatByColor(@RequestParam String color, Model model) {
        model.addAttribute("cats", catService.getCatByColor(color));
        return "cat-list";
    }

    @GetMapping("/cats/description")
    public String getCatByDescription(@RequestParam String description, Model model) {
        model.addAttribute("cats", catService.getCatByDescription(description));
        return "cat-list";
    }

    @GetMapping("/cats/create")
    public String showCreateCatForm(Model model) {
        model.addAttribute("cat", new Cat());
        return "cat-create";
    }

    
    @PostMapping("/cats")
    public String addCat(
        @ModelAttribute Cat cat,
        @RequestParam("image") MultipartFile imageFile,
        Model model) {
        catService.addCat(cat, imageFile);
        return "redirect:/cats";
}


    @GetMapping("/cats/update/{id}")
    public String showUpdateCatForm(@PathVariable Long id, Model model) {
        Cat cat = catService.getCatById(id);
        model.addAttribute("cat", cat);
        return "cat-update";
    }

    @PostMapping("/cats/update/{id}")
    public String updateCat(@PathVariable Long id, @ModelAttribute Cat cat, Model model) {
        catService.updateCat(id, cat);
        return "redirect:/cats/" + id;
    }

    @PostMapping("/cats/delete/{id}")
    public String deleteCat(@PathVariable Long id) {
        catService.deleteCat(id);
        return "redirect:/cats/";
    }

    @PostMapping("/cats/writeFile")
    public String writeJson(@ModelAttribute Cat cat, Model model) {
        catService.writeJson(cat);
        return "redirect:/cats/";
    }

    @GetMapping("/cats/readFile")
    @ResponseBody
    public String readJson() {
        return catService.readJson();
    }
}
