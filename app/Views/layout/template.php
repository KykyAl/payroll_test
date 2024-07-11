<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <!-- <link rel="icon" href="<?= base_url('../assets/img/kramatjati-logoo.png') ?>" type="image/png"> -->

    <title><?= $this->renderSection('title') ?></title>

    <!-- General CSS Files -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!--Jquery -->
    <script src="<?= base_url('assets/js/jquery-3.3.1.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/sweetalert/toastr.js') ?>"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <!-- CSS Libraries -->
    <!-- DataTables -->

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.3/css/select.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/keytable/2.6.4/css/keyTable.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.7/css/responsive.bootstrap4.min.css" />

    <!-- SELECT2 -->
    <!-- <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" /> -->

    <!-- Template CSS -->
    <link rel="stylesheet" href="<?= base_url('assets/css/style.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/components.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/daterangepicker.css') ?>">
    <link rel="stylesheet" href="<?= base_url('assets/css/bootstrap_datetimepicker.min.css') ?>">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />


</head>
<style>
    #loading {
        position: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        opacity: 0.7;
        background-color: #fff;
        z-index: 99;
    }

    #loading-image {
        z-index: 100;
    }
</style>

<body>
    <div id="loading">
        <img id="loading-image" src="<?= base_url('assets/img/loading.gif') ?>" alt="Loading..." />
    </div>
    <div id="app">

        <div class="main-wrapper">
            <div class="navbar-bg"></div>
            <nav class="navbar navbar-expand-lg main-navbar">
                <form class="form-inline mr-auto">
                    <ul class="navbar-nav mr-3">
                        <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg"><i class="fas fa-bars"></i></a></li>
                        <li><a href="#" data-toggle="search" class="nav-link nav-link-lg d-sm-none"><i class="fas fa-search"></i></a></li>
                    </ul>

                </form>
                <ul class="navbar-nav navbar-right">
                    <!-- <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link nav-link-lg message-toggle beep"><i class="far fa-envelope"></i></a>
                        <div class="dropdown-menu dropdown-list dropdown-menu-right">
                            <div class="dropdown-header">Messages
                                <div class="float-right">
                                    <a href="#">Mark All As Read</a>
                                </div>
                            </div>
                            <div class="dropdown-list-content dropdown-list-message">
                                <a href="#" class="dropdown-item dropdown-item-unread">
                                    <div class="dropdown-item-avatar">
                                        <img alt="image" src="<?= base_url('assets/img/avatar/avatar-1.png') ?>" class="rounded-circle">
                                        <div class="is-online"></div>
                                    </div>
                                    <div class="dropdown-item-desc">
                                        <b>Kusnaedi</b>
                                        <p>Hello, Bro!</p>
                                        <div class="time">10 Hours Ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item dropdown-item-unread">
                                    <div class="dropdown-item-avatar">
                                        <img alt="image" src="<?= base_url('assets/img/avatar/avatar-2.png') ?>" class="rounded-circle">
                                    </div>
                                    <div class="dropdown-item-desc">
                                        <b>Dedik Sugiharto</b>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                        <div class="time">12 Hours Ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item dropdown-item-unread">
                                    <div class="dropdown-item-avatar">
                                        <img alt="image" src="<?= base_url('assets/img/avatar/avatar-3.png') ?>" class="rounded-circle">
                                        <div class="is-online"></div>
                                    </div>
                                    <div class="dropdown-item-desc">
                                        <b>Agung Ardiansyah</b>
                                        <p>Sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                        <div class="time">12 Hours Ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="dropdown-item-avatar">
                                        <img alt="image" src="<?= base_url('assets/img/avatar/avatar-4.png') ?>" class="rounded-circle">
                                    </div>
                                    <div class="dropdown-item-desc">
                                        <b>Ardian Rahardiansyah</b>
                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit ess</p>
                                        <div class="time">16 Hours Ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="dropdown-item-avatar">
                                        <img alt="image" src="<?= base_url('assets/img/avatar/avatar-5.png') ?>" class="rounded-circle">
                                    </div>
                                    <div class="dropdown-item-desc">
                                        <b>Alfa Zulkarnain</b>
                                        <p>Exercitation ullamco laboris nisi ut aliquip ex ea commodo</p>
                                        <div class="time">Yesterday</div>
                                    </div>
                                </a>
                            </div>
                            <div class="dropdown-footer text-center">
                                <a href="#">View All <i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown dropdown-list-toggle"><a href="#" data-toggle="dropdown" class="nav-link notification-toggle nav-link-lg beep"><i class="far fa-bell"></i></a>
                        <div class="dropdown-menu dropdown-list dropdown-menu-right">
                            <div class="dropdown-header">Notifications
                                <div class="float-right">
                                    <a href="#">Mark All As Read</a>
                                </div>
                            </div>
                            <div class="dropdown-list-content dropdown-list-icons">
                                <a href="#" class="dropdown-item dropdown-item-unread">
                                    <div class="dropdown-item-icon bg-primary text-white">
                                        <i class="fas fa-code"></i>
                                    </div>
                                    <div class="dropdown-item-desc">
                                        Template update is available now!
                                        <div class="time text-primary">2 Min Ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="dropdown-item-icon bg-info text-white">
                                        <i class="far fa-user"></i>
                                    </div>
                                    <div class="dropdown-item-desc">
                                        <b>You</b> and <b>Dedik Sugiharto</b> are now friends
                                        <div class="time">10 Hours Ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="dropdown-item-icon bg-success text-white">
                                        <i class="fas fa-check"></i>
                                    </div>
                                    <div class="dropdown-item-desc">
                                        <b>Kusnaedi</b> has moved task <b>Fix bug header</b> to <b>Done</b>
                                        <div class="time">12 Hours Ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="dropdown-item-icon bg-danger text-white">
                                        <i class="fas fa-exclamation-triangle"></i>
                                    </div>
                                    <div class="dropdown-item-desc">
                                        Low disk space. Let's clean it!
                                        <div class="time">17 Hours Ago</div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item">
                                    <div class="dropdown-item-icon bg-info text-white">
                                        <i class="fas fa-bell"></i>
                                    </div>
                                    <div class="dropdown-item-desc">
                                        Welcome to Stisla template!
                                        <div class="time">Yesterday</div>
                                    </div>
                                </a>
                            </div>
                            <div class="dropdown-footer text-center">
                                <a href="#">View All <i class="fas fa-chevron-right"></i></a>
                            </div>
                        </div>
                    </li> -->
                    <li class="dropdown"><a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                            <img alt="image" src="" class="rounded-circle mr-1 fotoprofil">
                            <div class="d-sm-none d-lg-inline-block"><?= $user->username ?></div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <div class="dropdown-title">Logged in 5 min ago</div>
                            <a href="features-profile.html" class="dropdown-item has-icon">
                                <i class="far fa-user"></i> Profile
                            </a>
                            <a href="features-activities.html" class="dropdown-item has-icon">
                                <i class="fas fa-bolt"></i> Activities
                            </a>
                            <a href="features-settings.html" class="dropdown-item has-icon">
                                <i class="fas fa-cog"></i> Settings
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="<?= base_url('/logout') ?>" class="dropdown-item has-icon text-danger">
                                <i class="fas fa-sign-out-alt"></i> Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="main-sidebar sidebar-style-2">
                <aside id="sidebar-wrapper">
                    <div class="sidebar-brand">
                        <a href="index.html">Stisla</a>
                    </div>
                    <div class="sidebar-brand sidebar-brand-sm">
                        <a href="index.html">St</a>
                    </div>
                    <?= $this->include('layout/sidebar') ?>
                </aside>
            </div>

            <!-- Main Content -->
            <div class="main-content">
                <?= $this->renderSection('main') ?>

                <!-- {% block content %}{% endblock %} -->
            </div>
            <footer class="main-footer">
                <div class="footer-left">
                    Copyright &copy; <?= date('Y') ?>
                </div>
                <div class="footer-right">
                    <!-- {{ version }} -->
                </div>
            </footer>
        </div>
        <!-- {% endif %} -->
    </div>

    <!-- General JS Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="<?= base_url('assets/js/stisla.js') ?>"></script>


    <!-- JS Libraies -->
    <!-- DATATABLES BS 4-->
    <script src="<?= base_url('assets/js/datatables/jquery.dataTables.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/datatables/dataTables.select.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/datatables/dataTables.keyTable.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/datatables/dataTables.bootstrap4.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/datatables/dataTables.responsive.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/datatables/responsive.bootstrap4.min.js') ?>"></script>

    <!--SweetAlert -->
    <script src="<?= base_url('assets/js/sweetalert/sweetalert2@11.js') ?>"></script>
    <!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->

    <!-- General JS Scripts -->
    <script src="<?= base_url('assets/js/bootstrap/popper.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/bootstrap/bootstrap.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/jquery.nicescroll.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/moment.min.js') ?>"></script>
    <script src='<?= base_url('assets/js/format.currency.min.js'); ?>'></script>
    <script src="<?= base_url('assets/js/stisla.js') ?>"></script>
    <script src="<?= base_url('assets/js/daterangepicker.js') ?>"></script>
    <script src="<?= base_url('assets/js/bootstrap-datetimepicker.min.js') ?>"></script>


    <!-- JS Libraies -->
    <!-- <script src="<?= base_url('assets/js/select2.min.js') ?>"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <script src='<?= base_url('assets/js/script.js'); ?>'></script>
    <!-- Template JS File -->
    <script src="<?= base_url('assets/js/scripts.js') ?>"></script>
    <script src="<?= base_url('assets/js/custom.js') ?>"></script>

    <script>
        var kd = <?= isset($user->id_karyawan) ? json_encode($user->id_karyawan) : '""' ?>;

        toastr.options = {
            "closeButton": true,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-center",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };

        $(window).on('load', function() {
            $('#loading').hide();
            $.ajax({
                url: "<?= base_url('master/karyawan/get') ?>",
                data: {
                    id: kd
                },
                type: "POST",
                dataType: "JSON",
                success: function(res) {
                    if (res.response === 'success') {
                        let photoUrl = "https://kdjkt.com/kramatjati/assets/img/profile/" + res.data
                            .photo_profile;

                        // Create a new image element
                        let img = new Image();

                        img.onload = function() {
                            // Image exists, set as src for .fotoprofil
                            $('.fotoprofil').attr('src', photoUrl);
                        };

                        img.onerror = function() {
                            // Image does not exist, set default image
                            let defaultPhotoUrl =
                                "https://kdjkt.com/kramatjati/assets/img/profile/default.png";
                            $('.fotoprofil').attr('src', defaultPhotoUrl);
                        };

                        // Set the source URL to trigger onload or onerror
                        img.src = photoUrl;
                    } else {
                        let defaultPhotoUrl =
                            "https://kdjkt.com/kramatjati/assets/img/profile/default.png";
                        $('.fotoprofil').attr('src', defaultPhotoUrl);
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    // Handle AJAX error
                    console.error('AJAX error:', textStatus, errorThrown);

                    // Set default photo on error
                    let defaultPhotoUrl = "https://kdjkt.com/kramatjati/assets/img/profile/default.png";
                    $('.fotoprofil').attr('src', defaultPhotoUrl);
                }
            });


        })
        // let table = new DataTable('#myTable');
        function formatRupiah(angka, prefix) {
            var number_string = angka.replace(/[^,\d]/g, '').toString(),
                split = number_string.split(','),
                sisa = split[0].length % 3,
                rupiah = split[0].substr(0, sisa),
                ribuan = split[0].substr(sisa).match(/\d{3}/gi);

            // tambahkan titik jika yang di input sudah menjadi angka ribuan
            if (ribuan) {
                separator = sisa ? '.' : '';
                rupiah += separator + ribuan.join('.');
            }

            rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
            return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
        }


        function placeCaretAtEnd(el) {
            el.focus();
            if (typeof window.getSelection != "undefined" &&
                typeof document.createRange != "undefined") {
                var range = document.createRange();
                range.selectNodeContents(el);
                range.collapse(false);
                var sel = window.getSelection();
                sel.removeAllRanges();
                sel.addRange(range);
            } else if (typeof document.body.createTextRange != "undefined") {
                var textRange = document.body.createTextRange();
                textRange.moveToElementText(el);
                textRange.collapse(false);
                textRange.select();
            }
        }

        function setfocus(mulai, kode, tipe) {
            var jumlahk5 = 0;
            for ($o = 0; $o < $('#baris-' + tipe + '').val(); $o++) {
                var xobj = document.getElementById('' + tipe + '-' + (Number($o)) + '-' + kode);

                if (xobj != null) {
                    if ((Number($o) >= Number(mulai)) && Number(jumlahk5) === 0) {
                        jumlahk5++;


                        $('#' + tipe + '-' + (Number($o)) + '-' + kode).focus();
                        $('#' + tipe + '-' + (Number($o)) + '-' + kode).select();

                    }
                }
            }
        }

        function setfocusCaret(mulai, kode, tipe) {
            var jumlahk5 = 0;
            for ($o = 0; $o < $('#baris-' + tipe + '').val(); $o++) {
                var xobj = document.getElementById('' + tipe + '-' + (Number($o)) + '-' + kode);
                if (xobj != null) {
                    if ((Number($o) >= Number(mulai)) && Number(jumlahk5) === 0) {
                        jumlahk5++;
                        var SearchInput = $('#' + tipe + '-' + (Number($o)) + '-' + kode);
                        $('#' + tipe + '-' + (Number($o)) + '-' + kode).focus();
                        $('#' + tipe + '-' + (Number($o)) + '-' + kode).select();
                        var strLength = $('#' + tipe + '-' + (Number($o)) + '-' + kode).val().length;
                        SearchInput[0].setSelectionRange(strLength, strLength);
                    }
                }
            }
        }

        function setfocus2(mulai, kode, tipe) {

            var jumlahk5 = 0;
            for ($o = $('#baris-' + tipe).val(); $o >= 0; $o -= 1) {
                var xobj = document.getElementById('' + tipe + '-' + (Number($o)) + '-' + kode);
                if (xobj != null) {
                    if ((Number($o) < Number(mulai)) && Number(jumlahk5) === 0) {
                        jumlahk5++;
                        $('#' + tipe + '-' + (Number($o)) + '-' + kode).focus();
                        $('#' + tipe + '-' + (Number($o)) + '-' + kode).select();
                        break;
                    }
                }
            }
        }

        function Left(str, n) {
            if (n <= 0) {
                return "";
            } else if (n > String(str).length) {
                return str;
            } else {
                return String(str).substring(0, n);
            }
        }

        function Right(str, n) {
            if (n <= 0) {
                return "";
            } else if (n > String(str).length) {
                return str;
            } else {
                var iLen = String(str).length;
                return String(str).substring(iLen, iLen - n);
            }
        }

        function Mid(str, s, n) {
            if (n <= 0) {
                return "";
            } else if (s > String(str).length) {
                return "";
            } else if (Number(n) + Number(s) > String(str).length) {
                var iLen = String(str).length;
                return String(str).substring(Number(s) - 1, Number(iLen));
            } else {
                var iLen = String(str).length;
                return String(str).substring(Number(s) - 1, Number(s) - 1 + Number(n));
            }
        }

        function getselectedtext($idvar) {
            var textComponent = document.getElementById($idvar);
            var selectedText;
            // IE version
            if (document.selection != undefined) {
                textComponent.focus();
                var sel = document.selection.createRange();
                selectedText = sel.text;
            }
            // Mozilla version
            else if (textComponent.selectionStart != undefined) {
                var startPos = textComponent.selectionStart;
                var endPos = textComponent.selectionEnd;
                selectedText = textComponent.value.substring(startPos, endPos)
            }
            return (selectedText);
        }
    </script>
    <!-- Page Specific JS File -->
    <!-- {% block page_js %}{% endblock %} -->
</body>

</html>