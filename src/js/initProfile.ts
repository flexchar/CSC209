export function initProfile() {
    const dataStr = localStorage.getItem('profile');

    if (!dataStr) return;

    const data = JSON.parse(dataStr);
    const form = document.querySelector(
        '[data-profile-form]'
    ) as HTMLFormElement;

    for (let el of form.elements) {
        // For typeof checkbox
        if (el.type === 'checkbox') {
            el.checked = data[el.name];
            continue;
        }

        // FOr typeof radio
        if (el.type === 'radio') {
            if (el.value === data[el.name]) {
                // console.log(el);
                el.checked = true;
                continue;
            }
            continue;
        }

        // For the rest just assign value
        el.value = data[el.name];
    }
}
