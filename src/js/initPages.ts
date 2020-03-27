export function initPages(hooks = {}) {
    const container = document.querySelector('[data-container]');
    const pages = container.querySelectorAll('[id]');

    const switchToPage = id =>
        pages.forEach(page => {
            if (page.id !== id) {
                $(page).hide();
            } else {
                // Call hooks
                (hooks[id] || []).forEach(fun => fun());

                if (Math.random() * 10 > 7) {
                    $(`#${id}`).fadeIn();
                } else {
                    $(`#${id}`).slideDown();
                }
                localStorage.setItem('currentPageId', id);
            }
        });

    switchToPage(localStorage.getItem('currentPageId') || pages[0].id);

    const links = document.querySelectorAll('[data-target]');
    links.forEach(a => {
        a.addEventListener('click', event => {
            event.preventDefault();
            switchToPage(a.dataset.target);
        });
    });
}
