package com.exercise.controller;

import java.io.FileNotFoundException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.exercise.model.PdfJasperReport;
import com.exercise.repo.PdfJasperReportRepository;
import com.exercise.service.PdfJasperReportService;

import net.sf.jasperreports.engine.JRException;

@Controller
public class PdfJasperReportController {

	@Autowired
	PdfJasperReportService jasperService;
	@Autowired
	PdfJasperReportRepository jasperRepo;
	@PostMapping("/viewCostReport/{format}")
	public String generateReport(@PathVariable String format, @RequestBody List<PdfJasperReport> tableData) throws FileNotFoundException, JRException {
		

		jasperRepo.saveAll(tableData);
		
		
		return jasperService.exportReport(format);
	}
	
	

}
