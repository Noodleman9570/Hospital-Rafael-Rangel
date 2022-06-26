<?php
require('fpdf.php');

class PDF extends FPDF
{
// Page header
function Header()
{
    $this->Image('../Assets/images/logo.png',5,2,38);
    $this->SetFont('Arial','',12);
    $this->SetX(120);
    $this->Cell(50, 8, 'hola mundo',1,0,'L',0);
    $this->Ln(5);
}

// Page footer
function Footer()
{
    // // Position at 1.5 cm from bottom
    // $this->SetY(-15);
    // // Arial italic 8
    // $this->SetFont('Arial','I',8);
    // // Page number
    // $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
}
}

// Instanciation of inherited class
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetY(40);
$pdf->SetX(15);
$pdf->SetY(40);
$pdf->Cell(25, 8, 'hola mundo',1,0,'L',0);
$pdf->Cell(25, 8, 'hola mundo',1,0,'L',0);
$pdf->Cell(25, 8, 'hola mundo',1,0,'L',0);
$pdf->Cell(11, 8, 'sexo',1,0,'L',0);
$pdf->Cell(25, 8, 'hola mundo',1,0,'L',0);
$pdf->Cell(25, 8, 'hola mundo',1,0,'L',0);
$pdf->Cell(25, 8, 'hola mundo',1,0,'L',0);
$pdf->Cell(25, 8, 'hola mundo',1,0,'L',0);
// $pdf->Ln(40);
// for($i=1;$i<=40;$i++)
//     $pdf->setX(20);
//     $pdf->Cell(0,10,utf8_decode('Imprimiendo l ínea número '),0,1);
$pdf->Output();
?>