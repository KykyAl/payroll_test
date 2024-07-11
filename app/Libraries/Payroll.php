<?php

namespace App\Libraries;

class Payroll
{
    function changeDay($date)
    {
        $day = $date;
        switch ($day) {
            case 'Sunday':
                $hari = 'minggu';
                break;
            case 'Monday':
                $hari = 'senin';
                break;
            case 'Tuesday':
                $hari = 'selasa';
                break;
            case 'Wednesday':
                $hari = 'rabu';
                break;
            case 'Thursday':
                $hari = 'kamis';
                break;
            case 'Friday':
                $hari = 'jumat';
                break;
            case 'Saturday':
                $hari = 'sabtu';
                break;
            default:
                $hari = 'Tidak ada';
                break;
        }
        return $hari;
    }

    function changeMonth($date)
    {
        $day = $date;
        switch ($day) {
            case 'January':
                $hari = 'Januari';
                break;
            case 'Monday':
                $hari = 'senin';
                break;
            case 'Tuesday':
                $hari = 'selasa';
                break;
            case 'Wednesday':
                $hari = 'rabu';
                break;
            case 'Thursday':
                $hari = 'kamis';
                break;
            case 'Friday':
                $hari = 'jumat';
                break;
            case 'Saturday':
                $hari = 'sabtu';
                break;
            default:
                $hari = 'Tidak ada';
                break;
        }
        return $hari;
    }

    function penyebut($nilai)
    {
        $nilai = abs($nilai);
        $huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
        $temp = "";
        if ($nilai < 12) {
            $temp = " " . $huruf[$nilai];
        } else if ($nilai < 20) {
            $temp = penyebut($nilai - 10) . " Belas";
        } else if ($nilai < 100) {
            $temp = penyebut($nilai / 10) . " Puluh" . penyebut($nilai % 10);
        } else if ($nilai < 200) {
            $temp = " seratus" . penyebut($nilai - 100);
        } else if ($nilai < 1000) {
            $temp = penyebut($nilai / 100) . " Ratus" . penyebut($nilai % 100);
        } else if ($nilai < 2000) {
            $temp = " seribu" . penyebut($nilai - 1000);
        } else if ($nilai < 1000000) {
            $temp = penyebut($nilai / 1000) . " Ribu" . penyebut($nilai % 1000);
        } else if ($nilai < 1000000000) {
            $temp = penyebut($nilai / 1000000) . " Juta" . penyebut($nilai % 1000000);
        } else if ($nilai < 1000000000000) {
            $temp = penyebut($nilai / 1000000000) . " Milyar" . penyebut(fmod($nilai, 1000000000));
        } else if ($nilai < 1000000000000000) {
            $temp = penyebut($nilai / 1000000000000) . " Trilyun" . penyebut(fmod($nilai, 1000000000000));
        }
        return $temp;
    }

    function terbilang($nilai)
    {
        if ($nilai < 0) {
            $hasil = "minus " . trim(penyebut($nilai));
        } else {
            $hasil = trim(penyebut($nilai));
        }
        return $hasil;
    }

    function hoursToMinutes($hours)
    {
        $minutes = 0;
        if (strpos($hours, ':') !== false) {
            // Split hours and minutes. 
            list($hours, $minutes) = explode(':', $hours);
        }
        return $hours * 60 + $minutes;
    }

    function minutesToHours($minutes)
    {
        $hours = 0;
    }
}
