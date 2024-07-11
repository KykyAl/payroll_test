<?= $this->extend('layout/template') ?>

<?= $this->section('title') ?>DASHBOARD<?= $this->endSection() ?>

<?= $this->section('main') ?>


<section class="section">
    <div class="section-header">
        <h1><?= $title ?></h1>
        <div class="section-header-breadcrumb">
            <div class="breadcrumb-item active"><a href="/">Dashboard</a></div>
            <!-- <div class="breadcrumb-item"><a href="#">Bootstrap Components</a></div>
            <div class="breadcrumb-item">Breadcrumb</div> -->
        </div>
    </div>

    <div class="section-body">
        <h2 class="section-title"> PAYROLL</h2>
        <!-- <p class="section-lead">
            Indicate the current pages location within a navigational hierarchy that automatically adds separators via CSS.
        </p> -->


    </div>
</section>

<?= $this->endSection() ?>