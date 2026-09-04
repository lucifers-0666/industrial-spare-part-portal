/* ============================================================================
   INDUSTRIAL SPARE-PART PORTAL — PUBLIC SHELL JAVASCRIPT
   ============================================================================ */

document.addEventListener('DOMContentLoaded', function () {
    // 1. Mobile Menu Drawer Toggle
    var btnMobile = document.getElementById('btnMobileToggle');
    var mobileDrawer = document.getElementById('mobileDrawer');
    if (btnMobile && mobileDrawer) {
        btnMobile.addEventListener('click', function (e) {
            e.stopPropagation();
            if (mobileDrawer.style.display === 'none' || mobileDrawer.style.display === '') {
                mobileDrawer.style.display = 'block';
            } else {
                mobileDrawer.style.display = 'none';
            }
        });

        // Close mobile menu when clicking outside
        document.addEventListener('click', function (e) {
            if (mobileDrawer.style.display === 'block' && !mobileDrawer.contains(e.target) && !btnMobile.contains(e.target)) {
                mobileDrawer.style.display = 'none';
            }
        });

        // Close on Escape key press
        document.addEventListener('keydown', function (e) {
            if (e.key === 'Escape' && mobileDrawer.style.display === 'block') {
                mobileDrawer.style.display = 'none';
            }
        });
    }

    // 2. Sticky Header Scrolled Visual State Listener
    var headerWrapper = document.getElementById('headerWrapper');
    if (headerWrapper) {
        window.addEventListener('scroll', function () {
            if (window.scrollY > 20) {
                headerWrapper.classList.add('shadow-md');
            } else {
                headerWrapper.classList.remove('shadow-md');
            }
        });
    }
});

