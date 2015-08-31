<?php
//******************************************************************
//This file was generated by Cobalt, a rapid application development 
//framework developed by JV Roig (jvroig@jvroig.com).
//
//Cobalt on the web: http://cobalt.jvroig.com
//******************************************************************
require 'path.php';
init_cobalt('View AlumniEmplRecord');

require_once('thirdparty/tcpdf/tcpdf.php');
require_once 'reporter_class.php';
$reporter = cobalt_load_class('AlumniEmplRecord_rpt');
$sess_var = $reporter->session_array_name;
$title = $reporter->report_title;

require_once 'components/reporter_result_pdf.php';

// close and output PDF document
$pdf_filename = $_SESSION['user'] . '_' . $sess_var . '_' . date('Y-m-d_h-ia') . '.pdf';
$pdf->Output($pdf_filename, 'I');