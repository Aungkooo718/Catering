package com.exercise.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.multipart.MultipartFile;

import com.exercise.model.Holiday;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;


public class HolidayExcelHelper {
	public static String TYPE = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
	  
	  static String SHEET = "Holidays";

	  public static boolean hasExcelFormat(MultipartFile file) {

	    if (!TYPE.equals(file.getContentType())) {
	      return false;
	    }

	    return true;
	  }
	  public static List<Holiday> excelToHoliday(InputStream is) {
		  List<Holiday> holidays = new ArrayList<>();
		    try {
		    	XSSFWorkbook workbook = new XSSFWorkbook(is);

		      XSSFSheet sheet =  workbook.getSheet(SHEET);
		      Iterator<Row> rows = sheet.iterator();
		      

		      int rowNumber = 0;
		      for (Row row : sheet){
	               if (rowNumber ==0){
	            	   rowNumber++;
	                   continue;
	               }
	               Iterator<Cell> cellIterator = row.iterator();
	               int cellIndex = 0;
	               Holiday holiday = new Holiday();
	               DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d MMMM yyyy", Locale.ENGLISH);
	               while (cellIterator.hasNext()){
	                   Cell cell = cellIterator.next();
	                   System.out.println("Hello to my friend");
	                   switch (cellIndex){
	                   
	                   case 0:String inputDate = cell.getStringCellValue();
	                   inputDate = inputDate.replaceAll("(\\d)(?:st|nd|rd|th)", "$1");
	                   String[] substrings = inputDate.split(", ");
	                   for (var i=0;i< substrings.length;i++) {
	                       
	                       String inputString = substrings[0];
	                       String[] datedata = inputString.split(", ");
	                       String dateStringWithYear = datedata[0] + " " + LocalDate.now().getYear();
	                       LocalDate localDate = LocalDate.parse(dateStringWithYear, formatter);
	                       java.sql.Date sqlDate = java.sql.Date.valueOf(localDate);
	                      holiday.setDate(sqlDate);
		                   holiday.setDay(substrings[1]);
		                   System.out.println("my sql date is "+ sqlDate);
	                       System.out.println(substrings[1]);
	                   }
	                       break;
	                   
	                   case 1:
	                       holiday.setHolidays(cell.getStringCellValue());
	                       break;
	                   
	                       
	                       default : {
	                       }
	                       
	                   }
	                   cellIndex++;
	               }
	               holidays.add(holiday);
	           }
	       } catch (IOException e) {
	           e.getStackTrace();
	       }
	       return holidays;
	   }
}
