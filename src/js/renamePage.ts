export function renamePage() {
    const text = prompt('Enter new title');
    setPageTitle(text);
    if (text) localStorage.setItem('title', text);
    else localStorage.removeItem('title');
}

export function setPageTitle(text: string) {
    const h1 = document.querySelector('[data-rename-title]');
    h1.innerHTML = text;
    document.title = text;
}
