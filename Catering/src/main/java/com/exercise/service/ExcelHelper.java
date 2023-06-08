package com.exercise.service;



	import java.io.IOException;
	import java.util.Iterator;

import com.exercise.dao.EmployeeRepository;
import com.exercise.dto.*;
	import java.util.List;
	import org.apache.poi.ss.usermodel.Cell;
	import org.apache.poi.ss.usermodel.Row;
	import org.apache.poi.ss.usermodel.Sheet;
	import org.apache.poi.ss.usermodel.Workbook;
	import java.io.InputStream;
	import java.util.ArrayList;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.multipart.MultipartFile;

	public class ExcelHelper {
		 public static String TYPE = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
		  static String[] HEADERs = { "Id", "Title", "Description", "Published", "Status"};
		  public static String SHEET = "Employees";
		  @Autowired
		    private EmployeeRepository employeeRepository;
		  public static boolean hasExcelFormat(MultipartFile file) {

		    if (!TYPE.equals(file.getContentType())) {
		      return false;
		    }

		    return true;
		  }
		  List<Employee> employees = employeeRepository.findAll();
		  public static List<Employee> excelToTutorials(InputStream is) {
			  List<Employee> employees = new ArrayList<>();
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
		               BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
		               Employee emp = new Employee();
		               
		               int count=employees.size()+1;
		               while (cellIterator.hasNext()){
		            	   emp.setRole("Operator");
		            	   emp.setPassword(encoder.encode("ACE12341234"));
		            	   emp.setStatus("Active");
		            	   emp.setAccountNonLocked(true);
		                   Cell cell = cellIterator.next();
		                   switch (cellIndex){
		                   case 0:
		                       emp.setId(cell.getNumericCellValue());
		                       break;
		                   case 1:
		                       emp.setDivision(cell.getStringCellValue());
		                       break;
		                   case 2:
		                       emp.setStaffId(cell.getStringCellValue());
		                       break;
		                   case 3:
		                       emp.setName(cell.getStringCellValue());
		                       break;
		                   case 4:
		                       emp.setDoorLogNo((String.valueOf((int) cell.getNumericCellValue())));
		                      break;
		                   case 5:
		                       emp.setDepartment(cell.getStringCellValue());
		                       break;
		                   case 6:
		                       emp.setEmail(cell.getStringCellValue());
		                       break;
		                   case 7:
		                       emp.setTeam(cell.getStringCellValue());
		                       break;
		                       
		                       default : {
		                       }
		                       
		                   }
		                   cellIndex++;
		               }
		               employees.add(emp);
		           }
		       } catch (IOException e) {
		           e.getStackTrace();
		       }
		       return employees;
		   }
	}


