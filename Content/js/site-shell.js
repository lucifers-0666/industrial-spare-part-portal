/* ============================================================================
   SPAREFINDER INDUSTRIAL PROCUREMENT NETWORK — SHELL INTERACTION SCRIPT
   Robust Fixed-Header, Accessible Mobile Drawer & Microinteractions
   ============================================================================ */

document.addEventListener('DOMContentLoaded', function () {
    var btnMobile = document.getElementById('btnMobileToggle');
    var mobileDrawer = document.getElementById('mobileDrawer');
    var backdrop = document.getElementById('mobileDrawerBackdrop');
    var iconMenu = document.getElementById('iconMenu');
    var headerWrapper = document.getElementById('headerWrapper');

    function openMobileDrawer() {
        if (!mobileDrawer) return;
        mobileDrawer.style.display = 'block';
        if (backdrop) backdrop.style.display = 'block';
        document.body.classList.add('menu-open');
        if (btnMobile) {
            btnMobile.setAttribute('aria-expanded', 'true');
            if (iconMenu) {
                iconMenu.classList.remove('fa-bars');
                iconMenu.classList.add('fa-xmark');
            }
        }
    }

    function closeMobileDrawer() {
        if (!mobileDrawer) return;
        mobileDrawer.style.display = 'none';
        if (backdrop) backdrop.style.display = 'none';
        document.body.classList.remove('menu-open');
        if (btnMobile) {
            btnMobile.setAttribute('aria-expanded', 'false');
            if (iconMenu) {
                iconMenu.classList.remove('fa-xmark');
                iconMenu.classList.add('fa-bars');
            }
        }
    }

    if (btnMobile) {
        btnMobile.setAttribute('aria-expanded', 'false');
        btnMobile.addEventListener('click', function (e) {
            e.stopPropagation();
            if (mobileDrawer && mobileDrawer.style.display === 'block') {
                closeMobileDrawer();
            } else {
                openMobileDrawer();
            }
        });
    }

    if (backdrop) {
        backdrop.addEventListener('click', function () {
            closeMobileDrawer();
        });
    }

    // Close on Escape key press
    document.addEventListener('keydown', function (e) {
        if (e.key === 'Escape' && mobileDrawer && mobileDrawer.style.display === 'block') {
            closeMobileDrawer();
            if (btnMobile) btnMobile.focus();
        }
    });

    // Close when clicking any navigation link inside drawer
    if (mobileDrawer) {
        var links = mobileDrawer.querySelectorAll('a');
        links.forEach(function (link) {
            link.addEventListener('click', function () {
                closeMobileDrawer();
            });
        });
    }

    // Auto-close if resized to desktop breakpoint
    window.addEventListener('resize', function () {
        if (window.innerWidth >= 1024 && mobileDrawer && mobileDrawer.style.display === 'block') {
            closeMobileDrawer();
        }
    });

    // Header Scrolled Elevation State
    if (headerWrapper) {
        var updateHeaderElevation = function () {
            if (window.scrollY > 10) {
                headerWrapper.classList.add('is-scrolled');
            } else {
                headerWrapper.classList.remove('is-scrolled');
            }
        };
        window.addEventListener('scroll', updateHeaderElevation, { passive: true });
        updateHeaderElevation();
    }
});
