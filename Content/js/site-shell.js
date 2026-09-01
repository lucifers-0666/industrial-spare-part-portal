(function () {
    "use strict";

    var header = document.getElementById("headerWrapper");
    var toggle = document.getElementById("btnMobileToggle");
    var drawer = document.getElementById("mobileDrawer");
    var icon = document.getElementById("iconMenu");

    function setDrawer(open) {
        if (!drawer || !toggle) return;
        drawer.classList.toggle("is-open", open);
        drawer.setAttribute("aria-hidden", open ? "false" : "true");
        toggle.setAttribute("aria-expanded", open ? "true" : "false");
        toggle.setAttribute("aria-label", open ? "Close navigation" : "Open navigation");
        if (icon) icon.className = open ? "fa-solid fa-xmark" : "fa-solid fa-bars";
    }

    if (toggle) {
        toggle.addEventListener("click", function () {
            setDrawer(!drawer.classList.contains("is-open"));
        });
    }

    if (drawer) {
        var links = drawer.querySelectorAll("a");
        for (var i = 0; i < links.length; i++) {
            links[i].addEventListener("click", function () { setDrawer(false); });
        }
    }

    document.addEventListener("keydown", function (event) {
        if (event.key === "Escape") setDrawer(false);
    });

    window.addEventListener("resize", function () {
        if (window.innerWidth >= 1024) setDrawer(false);
    }, { passive: true });

    /* Visual state only. Sticky positioning is controlled entirely by CSS. */
    function updateHeaderState() {
        if (header) header.classList.toggle("is-scrolled", window.scrollY > 8);
    }

    updateHeaderState();
    window.addEventListener("scroll", updateHeaderState, { passive: true });
}());
