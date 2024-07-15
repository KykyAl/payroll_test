<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="<?= base_url('/') ?>">PAYROLL</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="<?= base_url('/') ?>">KDJKT</a>
        </div>
        <ul class="sidebar-menu">
            <li class="menu-header">Dashboard</li>
            <li class="nav-item ">
                <a href="<?= base_url('/') ?>" class="nav-link"><i class="fas fa-fire"></i><span>Dashboard</span></a>
            </li>
            <li class="menu-header">Menu</li>
            <?php if (

                in_array('read_master_trayek', $access) ||
                in_array('read_master_karyawan', $access) ||
                in_array('read_master_crew', $access) ||
                in_array('read_master_operasibis', $access) ||
                in_array('read_master_jamkerja', $access) ||
                in_array('read_master_premi', $access) ||
                $user->role == 1
            ) { ?>

                <?php if (ucfirst($segment1) == 'Master') { ?>
                    <li class="nav-item dropdown active">
                    <?php } else { ?>
                    <li class="nav-item dropdown">
                    <?php } ?>
                    <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-layer-group"></i>
                        <span>Master</span></a>
                    <ul class="dropdown-menu">
                        <?php if ((in_array('read_master_crew', $access)) || $user->role == '1') { ?>
                            <li <?= ((ucfirst($segment2) == 'Crew') ? 'class="active"' : '') ?>><a class="nav-link" href="<?= base_url('master/crew') ?>">Crew</a></li>
                        <?php } ?>
                    </ul>
                    </li>
                <?php } ?>
                <?php if (


                    $user->role == 1 ||
                    $user->role == 2

                ) { ?>
                    <?php if (ucfirst($segment1) == 'Transaksi') { ?>
                        <li class="nav-item dropdown active">
                        <?php } else { ?>
                        <li class="nav-item dropdown">
                        <?php } ?>
                        <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fa fa-clipboard"></i>
                            <span>Transaksi</span></a>
                        <ul class="dropdown-menu">
                            <?php if ((in_array('read_transaksi_perpal', $access)) || $user->role == '1' || $user->role == 2) { ?>
                                <li <?= ((ucfirst($segment2) == 'Perpal') ? 'class="active"' : '') ?>><a class="nav-link" href="<?= base_url('transaksi/perpal') ?>">Perpal</a></li>

                            <?php } ?>
                        </ul>
                        <ul class="dropdown-menu">
                            <?php if ((in_array('read_transaksi_perpal', $access)) || $user->role == '1' || $user->role == 2) { ?>
                                <li <?= ((ucfirst($segment2) == 'Test') ? 'class="active"' : '') ?>><a class="nav-link" href="<?= base_url('transaksi/perpal') ?>">Test</a></li>

                            <?php } ?>
                        </ul>
                        </li>
                    <?php } ?>

        </ul>
        <div class="mt-4 mb-4 p-3 hide-sidebar-mini">
            <a href="#" class="btn btn-primary btn-lg btn-block btn-icon-split">
                <i class="fas fa-rocket"></i> MIGEN
            </a>
        </div>
    </aside>
</div>