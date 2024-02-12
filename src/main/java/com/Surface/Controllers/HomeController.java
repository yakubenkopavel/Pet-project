package com.Surface.Controllers;

import com.Surface.Models.FileViewer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
public class HomeController {

    private final FileViewer fileViewer;

    @Autowired
    public HomeController(FileViewer fileViewer) {
        this.fileViewer = fileViewer;
    }

    @GetMapping("/")
    public String getHomePage(){
        return "homePage";
    }

    @GetMapping("/analysis")
    public String getAnalysisPage(){
        return "analysisPage";
    }

    @GetMapping("/data")
    public String getDataPage(@ModelAttribute("data") HashMap<Integer,ArrayList<String>> data, Model model){
        if(data.size() == 0){
            data = fileViewer.getData();
            model.addAttribute("data", data);
        }
        return "dataPage";
    }

    @GetMapping("/variogram")
    public String getVariogramPage(){
        return "variogramPage";
    }

    @PostMapping("/")
    public String create(@RequestParam("file-downloader") File file, RedirectAttributes redirectAttributes){
        HashMap<Integer, ArrayList<String>> data = fileViewer.readData(file.getAbsolutePath());
        redirectAttributes.addFlashAttribute("data", data);
        return "redirect:/data";
    }

}
