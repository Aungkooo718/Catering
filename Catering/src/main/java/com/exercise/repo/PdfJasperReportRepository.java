package com.exercise.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.exercise.model.PdfJasperReport;

public interface PdfJasperReportRepository extends JpaRepository<PdfJasperReport,Integer>{

}
