<!DOCTYPE html>
<html>

<head>
    <title>Manifest</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
        }

        .header,
        .footer {
            width: 100%;
            text-align: center;
            position: fixed;
        }

        .header {
            top: 0px;
        }

        .footer {
            bottom: 0px;
        }

        .content {
            margin-top: 150px;
            margin-bottom: 50px;
        }

        .table.list {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;

        }

        .table.list,
        .table.list th,
        .table.list td {
            border: 1px solid black;
        }

        .table.list th {
            height: 30px;
            background-color: orange;
        }


        /* th,
        td {
            padding: 2px;
            text-align: left;
        } */

        .page-number:before {
            content: "Halaman " counter(page);
            float: right;
        }

        .long-line {
            border: 0;
            /* Menghapus border default */
            height: 1px;
            /* Ketebalan garis */
            background-color: black;
            /* Warna garis */
            width: 80%;
            /* Lebar garis */
            margin: 0 auto;
            /* Pusatkan garis */
        }
    </style>
</head>

<body>

    <div class="header" style="margin-top: -10;">
        <img src="<?= $logo ?>" style="float: left; height: 50px;">

        <div style="float: left; text-align: left;">
            <strong>Kramatdjati</strong><br>
            Tlp 021-7290808/27083000<br>
            kramatdjati@kdjkt.com<br>
            www.kramatdjati.com<br>
        </div>

    </div>
    <hr class="long-line" style="margin-top: 50px;">
    <div class="content" style="margin-top: -10px;">
        <h2 style="text-align: center;">MANIFEST</h2>
        <h3 style="text-align: center;"><?= $data['kode_keberangkatan'] ?></h3>

        <div style="display: flex; justify-content: space-between;">
            <table style="width: 100%;">
                <tr>
                    <td style="width: 50%;">
                        <table>
                            <tr>
                                <td>Tanggal</td>
                                <td>: <?= date('d-m-Y', strtotime($data['databus']['tanggal_berangkat'])) ?></td>
                            </tr>
                            <tr>
                                <td>Asal</td>
                                <td>: <?= $data['nama_dari_kota'] ?></td>
                            </tr>
                            <tr>
                                <td>Tujuan</td>
                                <td>: <?= $data['nama_sampai_kota'] ?></td>
                            </tr>
                            <tr>
                                <td>Jam Berangkat</td>
                                <td>: <?= date('H:i', strtotime($data['databus']['jam_berangkat'])) ?></td>
                            </tr>
                            <?php
                            $durasiJam = date("H", strtotime($data['durasi']));
                            $durasiMenit = date("i", strtotime($data['durasi']));
                            ?>
                            <tr>
                                <td>Durasi</td>
                                <td>: <?php echo $durasiJam; ?> Jam <?php echo $durasiMenit; ?> Menit</td>
                            </tr>

                            <?php
                            $durasiJam = date("H", strtotime($data['durasi']));
                            $durasiMenit = date("i", strtotime($data['durasi']));
                            $totalMenit = ($durasiJam * 60) + $durasiMenit;
                            $sampaiTujuan = date("h:i A", strtotime($data['keberangkatan'] . '+' . $totalMenit . 'minutes'));

                            ?>
                            <tr>
                                <td>Sampai Tujuan</td>
                                <td>: <?= $sampaiTujuan ?></td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table style="margin-top:-35px">
                            <tr>
                                <td>Id Operasi</td>
                                <td>: <?= $data['databus']['kode_transaksi'] ?></td>
                            </tr>
                            <tr>
                                <td>Suprir 1</td>
                                <td>: <?= $data['databus']['id_supir'] ?>-<?= $data['databus']['supir1'] ?></td>
                            </tr>
                            <tr>
                                <td>Suprir 2</td>
                                <td>: <?= $data['databus']['id_supir2'] ?>-<?= $data['databus']['supir2'] ?></td>
                            </tr>
                            <tr>
                                <td>Kernet</td>
                                <td>: <?= $data['databus']['id_kernet'] ?>-<?= $data['databus']['kernet'] ?></td>
                            </tr>
                            <tr>
                                <td>No Kendaraan</td>
                                <td>: <?= $data['databus']['id_kendaraan'] ?>-<?= $data['databus']['merk'] ?></td>
                            </tr>

                        </table>
                    </td>
                </tr>
            </table>

        </div>


        <table class="table list">
            <thead>
                <tr>
                    <th>Kursi</th>
                    <th>No Tiket</th>
                    <th>Nama Penumpang</th>
                    <th>Naik</th>
                    <th>Tujuan</th>
                    <th>Turun</th>
                </tr>
            </thead>
            <tbody>
                <!-- <? if ($condition) : ?>
                    <p>Content</p>
                <? elseif ($other_condition) : ?>
                    <p>Other Content</p>
                <? else : ?>
                    <p>Default Content</p>
                <? endif; ?> -->
                <?php
                $total = 0;
                foreach ($data['list'] as $dt) :
                    $total++;
                ?>
                    <tr>
                        <td style="text-align: center;"><?= $dt['seat_no_label'] ?></td>
                        <td style="text-align:center;"><?= $dt['id_transaksi'] ?></td>
                        <td><?= $dt['nama'] ?></td>
                        <td><?= $dt['boarding_point'] ?></td>
                        <td><?= $dt['nama_kota'] ?></td>
                        <td><?= $dt['dropoff_point'] ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <table style="width: 100%;">
            <tr>
                <td style="width: 50%;">
                    <table>
                        <tr>
                            <td><b>Total Penumpang : </b></td>
                            <td> <b><?= $total ?></b></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <div class="footer">
        <div class="page-number"></div>
    </div>

</body>

</html>