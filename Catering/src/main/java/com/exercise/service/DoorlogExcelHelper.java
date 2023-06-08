package com.exercise.service;

import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.exercise.model.Doorlog;
import com.exercise.model.DoorlogKey;
@Service
public class DoorlogExcelHelper {
	
	
    public static String TYPE = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
    //static String SHEET = "DoorAccess_TransactionData";
    public static final String SHEET = "DoorAccess_TransactionData";

    public static boolean hasExcelFormat(MultipartFile file) {
    	
        if (!TYPE.equals(file.getContentType())) {
            return false;
        }
        return true;
    }

    public static List<Doorlog> excelToDoorlog(InputStream is) throws IOException {
        List<Doorlog> doorlogs = new ArrayList<>();
            XSSFWorkbook workbook = new XSSFWorkbook(is);
            XSSFSheet sheet = workbook.getSheet(SHEET);
            Iterator<Row> rows = sheet.iterator();

            int rowNumber = 0;
            while (rows.hasNext()) {
                Row row = rows.next();
                if (rowNumber == 0) {
                    rowNumber++;
                    continue;
                }
                
                if (sheet == null) {
                	System.out.println("hello to my world of my day");
                    throw new IllegalArgumentException("Sheet '" + SHEET + "' not found in the workbook.");
                }

                Iterator<Cell> cellIterator = row.iterator();
                int cellIndex = 0;
                Doorlog doorlog = new Doorlog();
                DoorlogKey doorlogkey = new DoorlogKey();
                doorlog.setId(doorlogkey); // Associate the composite key with the Doorlog entity

                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d MMMM yyyy", Locale.ENGLISH);
                while (cellIterator.hasNext()) {
                    Cell cell = cellIterator.next();
                    switch (cellIndex) {
                    case 0:
                        String doorlogNoValue = "";
                        if (cell.getCellType() == CellType.NUMERIC) {
                            doorlogNoValue = String.valueOf((int) cell.getNumericCellValue());
                        } else if (cell.getCellType() == CellType.STRING) {
                            doorlogNoValue = cell.getStringCellValue();
                        }
                        doorlogkey.setDoorlogno(doorlogNoValue);
                        break;
                    case 1:
                        if (cell.getCellType() == CellType.NUMERIC) {
                            if (DateUtil.isCellDateFormatted(cell)) {
                                LocalDateTime localDateTime = cell.getLocalDateTimeCellValue();
                                LocalDate localDate = localDateTime.toLocalDate(); // Extract the date part only
                                DateTimeFormatter mysqlFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                                String mysqlDateString = localDate.format(mysqlFormatter);
                                doorlogkey.setDoorlogtime(mysqlDateString);
                                System.out.println("doorlog data input is working fine" + mysqlDateString);
                            } else {
                                // Handle other numeric values if needed
                            }
                        }
                        break;
                    case 2:
                        if (cell.getCellType() == CellType.STRING) {
                            doorlog.setDepartment(cell.getStringCellValue());
                            System.out.println("doorlog data input is working fineaaaaaaaaaa");
                        } else if (cell.getCellType() == CellType.NUMERIC) {
                            doorlog.setDepartment(String.valueOf((int) cell.getNumericCellValue()));
                            System.out.println("doorlog data input is working fineaaaaaaaaaa");
                        }
                        break;
                    case 3:
                        if (cell.getCellType() == CellType.STRING) {
                            doorlog.setName(cell.getStringCellValue());
                            System.out.println("doorlog data input is working fineeeeeeeeeeeeeee");
                        } else if (cell.getCellType() == CellType.NUMERIC) {
                            doorlog.setName(String.valueOf((int) cell.getNumericCellValue()));
                            System.out.println("doorlog data input is working fineeeeeeeeeeeeeee");
                        }
                        break;

                        
                        default: {
                        }
                    }
                    cellIndex++;
                }

                doorlogs.add(doorlog);
                
            }
        return doorlogs;
    }
}

