package com.Surface.Models;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hibernate.annotations.Comment;
import org.springframework.stereotype.Component;

import javax.persistence.criteria.CriteriaBuilder;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOError;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Component
public class FileViewer {
    private HashMap<Integer,ArrayList<String>> observation;

    public FileViewer(){
        observation = new HashMap<>();
    }

    public HashMap<Integer, ArrayList<String>> getData(){
        return observation;
    }

    public HashMap<Integer, ArrayList<String>> readData(String path){
        int rowNumber = -1, columnNumber = -1;
        ArrayList<String> temp = null;

        path = path.replaceAll("\\\\", "\\\\\\\\");

        try(FileInputStream inputStream = new FileInputStream(path);
        HSSFWorkbook workbook = new HSSFWorkbook(inputStream)){
            HSSFSheet sheet = workbook.getSheetAt(0);
            rowNumber = sheet.getLastRowNum();
            columnNumber = sheet.getRow(0).getLastCellNum();

            for(int column = 0; column < columnNumber; column++){
                temp = new ArrayList<>();
                for(int row = 0; row < rowNumber; row++){
                    HSSFCell cell = sheet.getRow(row).getCell(column);
                    if(cell != null){
                        temp.add(cell.toString());
                    }
                }
                observation.put(column, temp);
            }

        }catch (IOException e){
            System.out.println(e.getMessage());
        }
        return observation;
    }
}
