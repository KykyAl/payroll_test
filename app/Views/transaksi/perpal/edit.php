<?= $this->extend('layout/template') ?>

<?= $this->section('title') ?><?= $title ?><?= $this->endSection() ?>

<?= $this->section('main') ?>




<section class="section">
    <div class="section-header">
        <h1><?= $title ?></h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="/">Edit</a></div>
            <!-- <div class="breadcrumb-item"><a href="#">Trayek</a></div> -->
            <div class="breadcrumb-item">Perpal</div>
        </div>
    </div>

    <form action="<?= base_url('transaksi/perpal/update') ?>" method="post">
        <input type="hidden" name="id" value="<?= $perpal['no_transaksi'] ?>">
        <div class="form-group">
            <label for="no_transaksi">No Transaksi</label>
            <input type="text" class="form-control" id="no_transaksi" name="no_transaksi" value="<?= $perpal['no_transaksi'] ?>">
        </div>
        <div class="form-group">
            <label for="tanggal">Tanggal Transaksi</label>
            <input type="date" class="form-control" id="tanggal" name="tanggal" value="<?= $perpal['tanggal'] ?>">
        </div>

        <div class="form-group">
            <label for="nama">Nama Supir/Kernet</label>
            <input type="text" class="form-control" id="nama" name="nama" value="<?= $perpal['nama'] ?>">
        </div>

        <div class="form-group">
            <label for="jumlah_hari_perpal">Jumlah Hari Perpal</label>
            <input type="text" class="form-control" id="jumlah_hari_perpal" name="jumlah_hari_perpal" value="<?= $perpal['jlh_hari_perpal'] ?>">
        </div>
        <div class="form-group">
            <label for="lokasi">Lokasi</label>
            <input type="text" class="form-control" id="lokasi" name="lokasi" value="<?= $perpal['lokasi'] ?>">
        </div>
        <div class="form-group">
            <label for="keterangan">Keterangan</label>
            <textarea class="form-control" id="keterangan" name="keterangan"><?= $perpal['keterangan'] ?></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>

    <?= $this->endSection() ?>