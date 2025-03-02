 <!-- Sidebar -->
 <nav class="navbar-vertical navbar">
     <div class="nav-scroller">
         <!-- Brand logo -->
         <a class="navbar-brand" href="@@webRoot/index.html">
             <img src="@@webRoot/assets/images/brand/logo/logo.svg" alt="" />
         </a>
         <!-- Navbar nav -->
         <ul class="navbar-nav flex-column" id="sideNavbar">
             <li class="nav-item">
                 <a class="nav-link has-arrow @@if (context.page ===  'dashboard') { active }" href="@@webRoot/index.html">
                     <i data-feather="home" class="nav-icon icon-xs me-2"></i> Dashboard
                 </a>

             </li>


             <!-- Nav item -->
             <li class="nav-item">
                 <div class="navbar-heading">Layouts & Pages</div>
             </li>


             <!-- Nav item -->
             <li class="nav-item">
                 <a class="nav-link has-arrow @@if (context.page_group !== 'pages') { collapsed }" href="#!" data-bs-toggle="collapse" data-bs-target="#navPages" aria-expanded="false" aria-controls="navPages">
                     <i data-feather="layers" class="nav-icon icon-xs me-2">
                     </i> Pages
                 </a>

                 <div id="navPages" class="collapse @@if (context.page_group === 'pages') { show }" data-bs-parent="#sideNavbar">
                     <ul class="nav flex-column">
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'profile') { active }" href="@@webRoot/pages/profile.html">
                                 Profile
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link has-arrow  @@if (context.page === 'settings') { active } " href="@@webRoot/pages/settings.html">
                                 Settings
                             </a>

                         </li>


                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'billing') { active }" href="@@webRoot/pages/billing.html">
                                 Billing
                             </a>
                         </li>




                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'pricing') { active }" href="@@webRoot/pages/pricing.html">
                                 Pricing
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === '404error') { active }" href="@@webRoot/pages/404-error.html">
                                 404 Error
                             </a>
                         </li>
                     </ul>
                 </div>

             </li>


             <!-- Nav item -->
             <li class="nav-item">
                 <a class="nav-link has-arrow @@if (context.page_group !== 'authentication') { collapsed }" href="#!" data-bs-toggle="collapse" data-bs-target="#navAuthentication" aria-expanded="false" aria-controls="navAuthentication">
                     <i data-feather="lock" class="nav-icon icon-xs me-2">
                     </i> Authentication
                 </a>
                 <div id="navAuthentication" class="collapse @@if (context.page_group === 'authentication') { show }" data-bs-parent="#sideNavbar">
                     <ul class="nav flex-column">
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'signin') { active }" href="@@webRoot/pages/sign-in.html"> Sign In</a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'signup') { active } " href="@@webRoot/pages/sign-up.html"> Sign Up</a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'forgetpassword') { active }" href="@@webRoot/pages/forget-password.html">
                                 Forget Password
                             </a>
                         </li>

                     </ul>
                 </div>
             </li>
             <li class="nav-item">
                 <a class="nav-link @@if (context.page === 'layouts') { active }" href="@@webRoot/pages/layout.html">
                     <i data-feather="sidebar" class="nav-icon icon-xs me-2">
                     </i>
                     Layouts
                 </a>
             </li>

             <!-- Nav item -->
             <li class="nav-item">
                 <div class="navbar-heading">UI Components</div>
             </li>

             <!-- Nav item -->
             <li class="nav-item">
                 <a class="nav-link has-arrow @@if (context.page_group !== 'components') { collapsed }" href="#!" data-bs-toggle="collapse" data-bs-target="#navComponents" aria-expanded="false" aria-controls="navComponents">
                     <i data-feather="database" class="nav-icon icon-xs me-2">
                     </i> Components
                 </a>
                 <div id="navComponents" class="collapse @@if (context.page_group === 'components') { show }" data-bs-parent="#sideNavbar">
                     <ul class="nav flex-column">
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'accordions') { active }" href="@@webRoot/components/accordions.html" aria-expanded="false">
                                 Accordions
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'alerts') { active }" href="@@webRoot/components/alerts.html" aria-expanded="false">
                                 Alerts
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'badge') { active }" href="@@webRoot/components/badge.html" aria-expanded="false">
                                 Badge
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'breadcrumb') { active }" href="@@webRoot/components/breadcrumb.html" aria-expanded="false">
                                 Breadcrumb
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'button') { active }" href="@@webRoot/components/button.html" aria-expanded="false">
                                 Button
                             </a>
                         </li>

                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'buttongroup') { active }" href="@@webRoot/components/button-group.html" aria-expanded="false">
                                 Button group
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'card') { active }" href="@@webRoot/components/card.html" aria-expanded="false">
                                 Card
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'carousel') { active }" href="@@webRoot/components/carousel.html" aria-expanded="false">
                                 Carousel
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'collapse') { active }" href="@@webRoot/components/collapse.html" aria-expanded="false">
                                 Collapse
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'dropdowns') { active }" href="@@webRoot/components/dropdowns.html" aria-expanded="false">
                                 Dropdowns
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'forms') { active }" href="@@webRoot/components/forms.html" aria-expanded="false">
                                 Forms
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'inputgroup') { active }" href="@@webRoot/components/input-group.html" aria-expanded="false">
                                 Input group
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'listgroup') { active }" href="@@webRoot/components/list-group.html" aria-expanded="false">
                                 List group
                             </a>
                         </li>

                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'modal') { active }" href="@@webRoot/components/modal.html" aria-expanded="false">
                                 Modal
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'navs') { active }" href="@@webRoot/components/navs.html" aria-expanded="false">
                                 Navs
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'navbar') { active }" href="@@webRoot/components/navbar.html" aria-expanded="false">
                                 Navbar
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'offcanvas') { active }" href="@@webRoot/components/offcanvas.html" aria-expanded="false">
                                 Offcanvas
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'pagination') { active }" href="@@webRoot/components/pagination.html" aria-expanded="false">
                                 Pagination
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'popover') { active }" href="@@webRoot/components/popovers.html" aria-expanded="false">
                                 Popovers
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'progress') { active }" href="@@webRoot/components/progress.html" aria-expanded="false">
                                 Progress
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link" href="@@webRoot/components/scrollspy.html" aria-expanded="false">
                                 Scrollspy
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'spinners') { active }" href="@@webRoot/components/spinners.html" aria-expanded="false">
                                 Spinners
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'toasts') { active }" href="@@webRoot/components/toasts.html" aria-expanded="false">
                                 Toasts
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'tooltips') { active }" href="@@webRoot/components/tooltips.html" aria-expanded="false">
                                 Tooltips
                             </a>
                         </li>
                     </ul>
                 </div>
             </li>
             <li class="nav-item">
                 <a class="nav-link @@if (context.page === 'tables') { active }" href="@@webRoot/pages/tables.html">
                     <i class="nav-icon icon-xs me-2 bi bi-table">
                     </i>
                     Tables
                 </a>
             </li>

             <!-- Nav item -->
             <li class="nav-item">
                 <a class="nav-link has-arrow @@if (context.page_group !== 'utilities') { collapsed }" href="#!" data-bs-toggle="collapse" data-bs-target="#navUtilities" aria-expanded="false" aria-controls="navUtilities">
                     <i data-feather="database" class="nav-icon icon-xs me-2">
                     </i> Utilities
                 </a>
                 <div id="navUtilities" class="collapse @@if (context.page_group === 'utilities') { show }" data-bs-parent="#sideNavbar">
                     <ul class="nav flex-column">
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'typography') { active }" href="@@webRoot/components/typography.html" aria-expanded="false">
                                 Typography
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'borders') { active }" href="@@webRoot/components/borders.html" aria-expanded="false">
                                 Borders
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'colors') { active }" href="@@webRoot/components/colors.html" aria-expanded="false">
                                 Colors
                             </a>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link @@if (context.page === 'shadows') { active }" href="@@webRoot/components/shadows.html" aria-expanded="false">
                                 Shadows
                             </a>
                         </li>
                     </ul>
                 </div>
             </li>
             <!-- Nav item -->
             <li class="nav-item">
                 <a class="nav-link has-arrow @@if (context.page_group !== 'menulevel') { collapsed }" href="#!" data-bs-toggle="collapse" data-bs-target="#navMenuLevel" aria-expanded="false" aria-controls="navMenuLevel">
                     <i data-feather="corner-left-down" class="nav-icon icon-xs me-2">
                     </i> Menu Level
                 </a>
                 <div id="navMenuLevel" class="collapse @@if (context.page_group === 'menulevel') { show }" data-bs-parent="#sideNavbar">
                     <ul class="nav flex-column">
                         <li class="nav-item">
                             <a class="nav-link has-arrow @@if (context.page === 'twolevel') { active }" href="#!" data-bs-toggle="collapse" data-bs-target="#navMenuLevelSecond" aria-expanded="false" aria-controls="navMenuLevelSecond">
                                 Two Level
                             </a>
                             <div id="navMenuLevelSecond" class="collapse" data-bs-parent="#navMenuLevel">
                                 <ul class="nav flex-column">
                                     <li class="nav-item">
                                         <a class="nav-link @@if (context.page === 'navitem1') { active }" href="#!"> NavItem 1</a>
                                     </li>
                                     <li class="nav-item">
                                         <a class="nav-link @@if (context.page === 'navitem2') { active }" href="#!"> NavItem 2</a>
                                     </li>
                                 </ul>
                             </div>
                         </li>
                         <li class="nav-item">
                             <a class="nav-link has-arrow @@if (context.page_group !== 'threelevel') { collapsed } " href="#!" data-bs-toggle="collapse" data-bs-target="#navMenuLevelThree" aria-expanded="false" aria-controls="navMenuLevelThree">
                                 Three Level
                             </a>
                             <div id="navMenuLevelThree" class="collapse @@if (context.page_group === 'threelevel') { show }" data-bs-parent="#navMenuLevel">
                                 <ul class="nav flex-column">
                                     <li class="nav-item">
                                         <a class="nav-link @@if (context.page_group !== 'navitemthree1') { collapsed }" href="#!" data-bs-toggle="collapse" data-bs-target="#navMenuLevelThreeOne" aria-expanded="false" aria-controls="navMenuLevelThreeOne">
                                             NavItem 1
                                         </a>
                                         <div id="navMenuLevelThreeOne" class="collapse collapse @@if (context.page_group === 'navitemthree1') { show }" data-bs-parent="#navMenuLevelThree">
                                             <ul class="nav flex-column">
                                                 <li class="nav-item">
                                                     <a class="nav-link @@if (context.page === 'navchilitem') { active }" href="#!">
                                                         NavChild Item 1
                                                     </a>
                                                 </li>
                                             </ul>
                                         </div>
                                     </li>
                                     <li class="nav-item">
                                         <a class="nav-link @@if (context.page === 'navitem2') { active }" href="#!"> Nav Item 2</a>
                                     </li>
                                 </ul>
                             </div>
                         </li>
                     </ul>
                 </div>
             </li>

             <!-- Nav item -->
             <li class="nav-item">
                 <div class="navbar-heading">Documentation</div>
             </li>

             <!-- Nav item -->
             <li class="nav-item">
                 <a class="nav-link has-arrow @@if (context.page === 'docs') { active }" href="@@webRoot/docs/index.html">
                     <i data-feather="clipboard" class="nav-icon icon-xs me-2">
                     </i> Docs
                 </a>
             </li>




         </ul>

     </div>
 </nav>